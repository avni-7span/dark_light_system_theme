part of 'theme_cubit.dart';

enum ThemeStateStatus { initial, loading, loaded }

class ThemeState extends Equatable {
  const ThemeState({
    this.status = ThemeStateStatus.initial,
    this.isLightMode = false,
  });

  final ThemeStateStatus status;
  final bool isLightMode;

  @override
  List<Object?> get props => [status, isLightMode];

  ThemeState copyWith({
    ThemeStateStatus? status,
    bool? isLightMode,
  }) {
    return ThemeState(
      status: status ?? this.status,
      isLightMode: isLightMode ?? this.isLightMode,
    );
  }
}
