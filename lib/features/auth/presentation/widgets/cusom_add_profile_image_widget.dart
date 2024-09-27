import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
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
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title:  Text('Camera'.tr(context: context )),
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
                leading: const Icon(Icons.photo_library),
                title:  Text('Gallery'.tr(context: context )),
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
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(150.w, 150.h),
                painter: DashedCirclePainter(),
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
                    backgroundColor: Colors.black,
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
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ),
      ],
    );
  }
}
