import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_localization/cubit/theme_cubit.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  //  Future<void> _showDialogue(){
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('Choose theme'),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //         ),
  //       );
  //     },
  //   )
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        children: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return SwitchListTile(
                title: const Text('Dark Mode'),
                value: state.isLightMode,
                secondary: const Icon(Icons.dark_mode),
                onChanged: (value) async {
                  context.read<ThemeCubit>().setAppTheme(value);
                },
              );
            },
          )
          // ListTile(
          //   title: Text('Choose Theme'),
          //   onTap: _showDialogue,
          // )
        ],
      ),
    );
  }
}
