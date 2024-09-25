import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signUpProfileFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> resetNewPasswordFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> emailResetPasswordFormKey = GlobalKey<FormState>();
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
    // One RegExp to check all conditions
    const passwordPattern = r'^(?=.*[A-Z])(?=.*[a-z])(?=(?:.*\d){6,}).{6,}$';
    final regExp = RegExp(passwordPattern);

    if (!regExp.hasMatch(password!)) {
      return 'كلمة السر يجب أن تحتوي على 6 أحرف على الأقل\nتشمل حرف كبير، حرف صغير، و 6 أرقام';
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
