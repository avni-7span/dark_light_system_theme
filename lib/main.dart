import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_localization/cubit/theme_cubit.dart';
import 'package:theme_localization/home_page.dart';
import 'package:theme_localization/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: state.isLightMode ? lightMode : darkMode,
            themeMode: ThemeMode.system,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
