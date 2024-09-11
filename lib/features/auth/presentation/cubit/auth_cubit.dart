import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
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
