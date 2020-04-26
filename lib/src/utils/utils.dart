import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showSnackBarAndCloseDrawer(context) {
  closeDrawer(context);

  showSnackBar(context);
}

void showSnackBar(context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("Función no implementada"),
    duration: Duration(milliseconds: 400),
  ));
}

void closeDrawer(context) {
  Navigator.pop(context);
}

void statusBarTransparent(isDarkTheme) {
  if (isDarkTheme)
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      )
    );
  else
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      )
    );
}