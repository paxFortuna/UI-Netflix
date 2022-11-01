import 'package:flutter/material.dart';

import 'constants.dart';

final ThemeData theme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(color: Colors.black),
  textTheme: const TextTheme(
    // 1
    bodyText2: TextStyle(color: kTextColor),
  ),
);
