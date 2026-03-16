import 'package:flutter/material.dart';
import 'package:learnn/data/constant.dart';
import 'package:learnn/data/notifiers.dart';
import 'package:learnn/views/pages/welcomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
   
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final bool? repeat = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.purple,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
