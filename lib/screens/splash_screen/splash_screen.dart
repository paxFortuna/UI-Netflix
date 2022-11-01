import 'package:flutter/material.dart';

import '../profile/profile_screen.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder:(context) => const ProfileScreen()),
      );
      // Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
    });

    return Container();
  }
}
