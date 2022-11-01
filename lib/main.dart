import 'package:flutter/material.dart';
import 'package:ui_netflix/routes.dart';
import 'package:ui_netflix/screens/splash_screen/splash_screen.dart';
import 'package:ui_netflix/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
