import 'package:flutter/material.dart';

import 'package:floower_app/app/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
    );
  }
}
