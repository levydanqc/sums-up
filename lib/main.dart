import 'package:flutter/material.dart';
import 'package:sums_up/themes/dark_theme.dart';
import 'package:sums_up/themes/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'views/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: customLightTheme(),
      darkTheme: customDarkTheme(),
      themeMode: ThemeMode.system,
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}
