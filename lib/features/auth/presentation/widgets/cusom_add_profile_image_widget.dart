import 'dart:io';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/utils/app_colors.dart';
import 'dashed_circle_avatar.dart_painter.dart';

class CustomAddProfileImageWidget extends StatefulWidget {
  final Function(File?) onImageSelected;
  final String? errorText;

  const CustomAddProfileImageWidget({
    super.key,
    required this.onImageSelected,
    this.errorText,
  });

  @override
  State<CustomAddProfileImageWidget> createState() =>
      _CustomAddProfileImageWidgetState();
}

class _CustomAddProfileImageWidgetState
    extends State<CustomAddProfileImageWidget> {
  File? _imageFile;

  Future<void> _pickImage() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'ChooseImageSource'.tr(context: context),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                title: Text(
                  'Camera'.tr(context: context),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () async {
                  context.pop();
                  final pickedFile =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  if (pickedFile != null) {
                    setState(() {
                      _imageFile = File(pickedFile.path);
                    });
                    widget.onImageSelected(_imageFile);
                  }
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo_library,
                  color: Colors.white,
                ),
                title: Text(
                  'Gallery'.tr(context: context),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () async {
                  context.pop();

                  final pickedFile = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (pickedFile != null) {
                    setState(() {
                      _imageFile = File(pickedFile.path);
                    });
                    widget.onImageSelected(_imageFile);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(150.w, 150.h),
                painter:
                    isDark ? DashedCirclePainter() : LightDashedCirclePainter(),
              ),
              _imageFile != null
                  ? ClipOval(
                      child: Image.file(
                        _imageFile!,
                        width: 130.w,
                        height: 130.h,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const SizedBox(),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    radius: 24.r,
                    backgroundColor:
                        isDark ? Colors.black : AppColors.blueLight,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (widget.errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Text(
              widget.errorText!,
              style: TextStyle(
                color: isDark ? AppColors.yellowLight : Colors.red,
                fontSize: 12.sp,
              ),
            ),
          ),
      ],
    );
  }
}
