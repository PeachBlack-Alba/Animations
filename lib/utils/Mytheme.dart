import 'package:flutter/material.dart';


ThemeData MyTheme () {
  TextTheme _myTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontFamily: 'Play',
        fontSize: 20,
        color: Colors.black
      )

    );
  }
  final ThemeData base=ThemeData();
  return base.copyWith(
    textTheme: _myTextTheme(base.textTheme),

  );

}