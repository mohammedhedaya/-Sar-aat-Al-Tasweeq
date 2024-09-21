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
