import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_launch_menu_brn.dart';

class LaunchAdTextField extends StatefulWidget {
  final String hintText;
  final VoidCallback onSuffixIconTap;

  const LaunchAdTextField({
    super.key,
    required this.hintText,
    required this.onSuffixIconTap,
  });

  @override
  State<LaunchAdTextField> createState() => _LaunchAdTextFieldState();
}

class _LaunchAdTextFieldState extends State<LaunchAdTextField> {
  bool _isExpanded = false;
  bool _isRecording = false;
  bool _isPlaying = false;
  String? _filePath;
  FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  FlutterSoundPlayer _player = FlutterSoundPlayer();
  final RecorderController _recorderController = RecorderController();

  @override
  void initState() {
    super.initState();
    _initRecorder();
    _initPlayer();
  }

  Future<void> _initRecorder() async {
    _recorder = FlutterSoundRecorder();
    _filePath = '${(await getTemporaryDirectory()).path}/temp_audio.aac';
  }

  Future<void> _initPlayer() async {
    _player = FlutterSoundPlayer();
    await _player.openPlayer();
  }

  Future<void> _startRecording() async {
    await _recorderController.checkPermission();
    await _recorder.openRecorder();
    await _recorder.startRecorder(
      toFile: _filePath,
      codec: Codec.aacADTS,
      sampleRate: 16000,
    );
    _recorderController.record();
    setState(() {
      _isRecording = true;
      _isPlaying = false;
    });
  }

  Future<void> _stopRecording() async {
    await _recorder.stopRecorder();
    _recorderController.stop();
    setState(() {
      _isRecording = false;
      // Prepare for playback
      _isPlaying = false;
    });
  }

  Future<void> _playRecording() async {
    if (_filePath != null) {
      await _player.startPlayer(
        fromURI: _filePath,
        codec: Codec.aacADTS,
        whenFinished: () {
          setState(() {
            _isPlaying = false;
          });
        },
      );
      setState(() {
        _isPlaying = true;
      });
    }
  }

  Future<void> _stopPlayback() async {
    await _player.stopPlayer();
    setState(() {
      _isPlaying = false;
    });
  }

  @override
  void dispose() {
    _recorder.closeRecorder();
    _player.closePlayer();
    _recorderController.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          cursorColor: Colors.teal,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.style12W700.copyWith(
              color: const Color(0xff9C9C9C),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        Positioned(
          bottom: 20.h,
          left: 10.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_isExpanded) ...[
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuCamera,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuFile,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuImage,
                ),
                SizedBox(height: 8.h),
              ],
              GestureDetector(
                onTap: _toggleExpand,
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor:
                      _isExpanded ? const Color(0xffCC0000) : Colors.teal,
                  child: Icon(
                    _isExpanded ? Icons.close : Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Positioned(
            bottom: 20.h,
            right: 10.w,
            child: GestureDetector(
              onTap: () async {
                if (_isRecording) {
                  await _stopRecording();
                } else {
                  await _startRecording();
                }
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor:
                    _isRecording ? Colors.red : const Color(0xffB6B6B6),
                child: Icon(
                  _isRecording ? Icons.mic : Icons.mic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        if (_isRecording)
          Positioned(
            bottom: 20.h,
            right: 50.w,
            left: 80.w,
            child: AudioWaveforms(
              enableGesture: true,
              size: Size(45.w, 27.h),
              padding: EdgeInsets.all(5.r),
              recorderController: _recorderController,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(50.r),
              ),
              waveStyle: const WaveStyle(
                middleLineThickness: 0.0,
                waveThickness: 5.0,
              ),
            ),
          ),
        if (_filePath != null)
          Positioned(
            top: 20.h,
            left: 20.w,
            child: GestureDetector(
              onTap: () {
                if (_isPlaying) {
                  _stopPlayback();
                } else {
                  _playRecording();
                }
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: const Color(0xffB6B6B6),
                child: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
