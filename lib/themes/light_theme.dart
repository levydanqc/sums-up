import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sums_up/themes/constants.dart';

ThemeData customLightTheme() {
  final base = ThemeData.light().textTheme;

  TextTheme customLightThemesTextTheme() {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Roboto',
        fontSize: 22.0,
        color: Colors.black,
      ),
      headline6: base.headline6?.copyWith(fontSize: 15.0, color: primary),
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

  AppBarTheme customAppBarTheme() {
    return ThemeData.light().appBarTheme.copyWith(
          color: Colors.white,
          elevation: 0,
          iconTheme: ThemeData.light().iconTheme.copyWith(
                color: Colors.black,
              ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle: customLightThemesTextTheme().bodyText2,
          titleTextStyle: customLightThemesTextTheme().headline6,
        );
  }

  return ThemeData.light().copyWith(
    appBarTheme: customAppBarTheme(),
    textTheme: customLightThemesTextTheme(),
    primaryColor: primary,
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
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondary),
  );
}
