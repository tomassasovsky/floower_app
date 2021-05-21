import 'package:flutter/cupertino.dart';

import 'package:floower_app/meta/pages/login_page.dart';
import 'package:floower_app/meta/pages/register_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'home':
      return CupertinoPageRoute(builder: (context) => RegisterPage());
    case 'login':
      return CupertinoPageRoute(builder: (context) => LoginPage());
    case 'register':
      return CupertinoPageRoute(builder: (context) => RegisterPage());
		default:
      return CupertinoPageRoute(builder: (context) => LoginPage());
  }
}
