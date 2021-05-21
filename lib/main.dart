import 'package:flutter/material.dart';

import 'package:floower_app/app/routes/routes.dart';
import 'package:floower_app/app/helpers/helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusLight();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Color(0xffEDEAE0)),
      darkTheme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff1a1a1b)),
    );
  }
}
