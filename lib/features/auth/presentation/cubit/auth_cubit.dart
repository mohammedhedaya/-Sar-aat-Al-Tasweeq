import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
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
  bool isTermsChecked = false; // Add this field
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

  void setProfileImage(File? image, context) {
    profileImage = image;
    validateProfileImage(context);
    emit(AuthProfileImageUpdated());
  }

  void validateProfileImage(context) {
    if (profileImage == null) {
      profileImageError = "chooseProfileImage".tr(context: context);
    } else {
      profileImageError = null;
    }
    emit(AuthProfileImageValidated());
  }

  bool validateSignUpProfile(context) {
    validateProfileImage(context);
    return signUpProfileFormKey.currentState!.validate() &&
        profileImageError == null;
  }

  void setSelectedCountry(String? countryCode) {
    selectedCountry = countryCode;
  }

  //! Obscure password text
  void obscurePasswordText() {
    obscurePasswordTextValue = !obscurePasswordTextValue!;
    emit(ObscurePasswordTextUpdateState());
  }

  //! Update terms checkbox value
  void updateTermsChecked(bool value) {
    isTermsChecked = value;
    emit(AuthTermsCheckedUpdateState());
  }
}
