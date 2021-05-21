import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

void changeStatusLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
}

void changeStatusDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
}
