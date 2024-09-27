import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/edit_item_profile.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final String? source = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ChooseImageSource".tr(context: context)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'camera'),
              child: Text('Camera'.tr(context: context)),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'gallery'),
              child: Text('Gallery'.tr(context: context)),
            ),
          ],
        );
      },
    );

    if (source != null) {
      final pickedFile = await picker.pickImage(
        source: source == 'camera' ? ImageSource.camera : ImageSource.gallery,
      );

      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              opacity: 0.10,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundImage: _image != null
                              ? FileImage(_image!)
                              : const AssetImage(
                                  Assets.imagesImageInProfile,
                                ) as ImageProvider,
                        ),
                        SizedBox(height: 10.h),
                        InkWell(
                          onTap: _pickImage,
                          child: Text(
                            "upload_new_image".tr(context: context),
                            style: AppStyles.style14W500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "faisal_abdelaziz".tr(context: context),
                        style: AppStyles.style20W400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                const EditItemProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
