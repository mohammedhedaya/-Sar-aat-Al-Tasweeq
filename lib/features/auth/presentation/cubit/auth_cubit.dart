import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
