import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signUpProfileFormKey = GlobalKey<FormState>();
  bool? obscurePasswordTextValue = true;
  String? firstName;
  String? secondName;
  String? lastName;
  String? email;
  String? phone;
  String? password;
  String? confirmPassword;
  String? city;
  String? selectedCountry;
  File? profileImage;
  String? profileImageError;

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'هذا الحقل مطلوب';
    }
    if (value.length < 8) {
      return 'يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل';
    }
    if (!RegExp(r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف واحد\nورقم واحد ورمز واحد على الأقل';
    }
    return null;
  }

  void setProfileImage(File? image) {
    profileImage = image;
    validateProfileImage();
    emit(AuthProfileImageUpdated());
  }

  void validateProfileImage() {
    if (profileImage == null) {
      profileImageError = 'الرجاء اختيار صورة للملف الشخصي';
    } else {
      profileImageError = null;
    }
    emit(AuthProfileImageValidated());
  }

  bool validateSignUpProfile() {
    validateProfileImage();
    return signUpProfileFormKey.currentState!.validate() &&
        profileImageError == null;
  }

  void setSelectedCountry(String? countryCode) {
    selectedCountry = countryCode;
  }

  //! Obscure password text
  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
}
