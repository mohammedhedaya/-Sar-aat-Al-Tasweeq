
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_chart/core/cache/cache_helper.dart';
import 'package:shopping_chart/core/data/models/enums/theme_state.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());
  changeTheme(ThemeState state) {
    switch (state) {
      case ThemeState.Initial:
      if(CacheHelper.sharedPreferences.getString('theme')=='null'){
        if(CacheHelper.sharedPreferences.getString('theme')=='Light'){
          emit(AppLightTheme());
        }else{
          emit(AppDarkTheme());
        }
      }
        break;
      case ThemeState.Light:
      CacheHelper.sharedPreferences.setString('theme', 'Light');
        emit(AppLightTheme());
        break;
      case ThemeState.Dark:
            CacheHelper.sharedPreferences.setString('theme', 'Light');
        emit(AppDarkTheme());
        break;
    }
  }
}
