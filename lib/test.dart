import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

class RecordAudioScreen extends StatefulWidget {
  const RecordAudioScreen({super.key});

  @override
  State<RecordAudioScreen> createState() => _RecordAudioScreenState();
}

class _RecordAudioScreenState extends State<RecordAudioScreen> {
  FlutterSoundRecorder? _recorder;
  FlutterSoundPlayer? _player;
  bool _isRecording = false;
  bool _isPlaying = false;
  String? _filePath;
  final RecorderController _recorderController = RecorderController();

  @override
  void initState() {
    super.initState();
    _initRecorder();
    _initPlayer();
  }

  Future<void> _initRecorder() async {
    _recorder = FlutterSoundRecorder();
    await _recorderController.checkPermission();
    _filePath = '${(await getTemporaryDirectory()).path}/temp_audio.aac';
  }

  Future<void> _initPlayer() async {
    _player = FlutterSoundPlayer();
    await _player!.openPlayer();
  }

  Future<void> _startRecording() async {
    await _recorder!.openRecorder();
    await _recorder!.startRecorder(
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
    await _recorder!.stopRecorder();
    _recorderController.stop();
    setState(() {
      _isRecording = false;
      // Prepare for playback
      _isPlaying = false;
    });
  }

  Future<void> _playRecording() async {
    if (_filePath != null) {
      await _player!.startPlayer(
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
    await _player!.stopPlayer();
    setState(() {
      _isPlaying = false;
    });
  }

  @override
  void dispose() {
    _recorder?.closeRecorder();
    _player?.closePlayer();
    _recorderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Record Audio')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the waveform while recording
          if (_isRecording)
            AudioWaveforms(
              backgroundColor: const Color(0xffD9D9D9),
              enableGesture: true,
              size: Size(MediaQuery.of(context).size.width, 27.h),
              recorderController: _recorderController,
              waveStyle: const WaveStyle(
                waveColor: Color(0xff656565),
                // middleLineColor: Colors.red,
                middleLineThickness: 2.0,
                waveThickness: 4.0,
              ),
            ),
          const SizedBox(height: 20),
          IconButton(
            iconSize: 80,
            icon:
                Icon(_isRecording ? Icons.stop : Icons.mic, color: Colors.red),
            onPressed: () {
              _isRecording ? _stopRecording() : _startRecording();
            },
          ),
          const SizedBox(height: 20),
          if (!_isRecording && _filePath != null)
            IconButton(
              iconSize: 80,
              icon: Icon(
                _isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.green,
              ),
              onPressed: () {
                _isPlaying ? _stopPlayback() : _playRecording();
              },
            ),
          const SizedBox(height: 20),
          // if (_filePath != null)
        ],
      ),
    );
  }
}
