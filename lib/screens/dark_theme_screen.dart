import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_switcher_provider.dart';

class ThemeSwitcherExample extends StatefulWidget {
  const ThemeSwitcherExample({Key? key}) : super(key: key);

  @override
  State<ThemeSwitcherExample> createState() => _ThemeSwitcherExampleState();
}

class _ThemeSwitcherExampleState extends State<ThemeSwitcherExample> {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcherProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Switcher"),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
            value: ThemeMode.light,
            groupValue: themeSwitcher.themeMode,
            onChanged: themeSwitcher.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark Mode"),
            value: ThemeMode.dark,
            groupValue: themeSwitcher.themeMode,
            onChanged: themeSwitcher.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("System Default"),
            value: ThemeMode.system,
            groupValue: themeSwitcher.themeMode,
            onChanged: themeSwitcher.setTheme,
          ),
        ],
      ),
    );
  }
}
