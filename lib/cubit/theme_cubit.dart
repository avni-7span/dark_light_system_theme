import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void setAppTheme(bool isLightMode) {
    emit(state.copyWith(isLightMode: isLightMode));
  }
}
