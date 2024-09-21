import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/dashed_circle_avatar.dart_painter.dart';

class CustomAddProfileImageWidget extends StatefulWidget {
  const CustomAddProfileImageWidget({super.key});

  @override
  State<CustomAddProfileImageWidget> createState() =>
      _CustomAddProfileImageWidgetState();
}

class _CustomAddProfileImageWidgetState
    extends State<CustomAddProfileImageWidget> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
              child: const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
