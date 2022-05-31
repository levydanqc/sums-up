import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sums_up/themes/constants.dart';

ThemeData customLightTheme() {
  TextTheme customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Roboto',
        fontSize: 22.0,
        color: Colors.black,
      ),
      headline6: base.headline6?.copyWith(fontSize: 15.0, color: Colors.orange),
      headline4: base.headline1?.copyWith(
        fontSize: 24.0,
        color: Colors.black,
      ),
      headline3: base.headline1?.copyWith(
        fontSize: 22.0,
        color: Colors.black,
      ),
      caption: base.caption?.copyWith(
        color: grey,
      ),
      bodyText2: base.bodyText2?.copyWith(color: const Color(0xFF807A6B)),
      bodyText1: base.bodyText1?.copyWith(color: Colors.brown),
    );
  }

  return ThemeData.light().copyWith(
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          color: Colors.white,
          elevation: 0,
          iconTheme: ThemeData.light().iconTheme.copyWith(
                color: Colors.black,
              ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle:
              customLightThemesTextTheme(ThemeData.light().textTheme).bodyText2,
          titleTextStyle:
              customLightThemesTextTheme(ThemeData.light().textTheme).headline6,
        ),
    textTheme: customLightThemesTextTheme(ThemeData.light().textTheme),
    primaryColor: const Color(0xffce107c),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(
          color: Colors.white,
          size: 20,
        ),
    iconTheme: ThemeData.light().iconTheme.copyWith(
          color: Colors.white,
        ),
    backgroundColor: Colors.white,
    tabBarTheme: ThemeData.light().tabBarTheme.copyWith(
          labelColor: const Color(0xffce107c),
          unselectedLabelColor: Colors.grey,
        ),
    buttonTheme:
        ThemeData.light().buttonTheme.copyWith(buttonColor: Colors.red),
    errorColor: Colors.red,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
  );
}
