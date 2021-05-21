import 'package:floower_app/meta/widgets/auth_title.dart';
import 'package:floower_app/meta/widgets/blue_button.dart';
import 'package:flutter/material.dart';

import 'package:floower_app/meta/widgets/custom_input.dart';
import 'package:floower_app/meta/widgets/header.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            LoginHeader(),
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                AuthTitle(title: ['hello', 'welcome back']),
                _Form(),
                BlueButton(text: 'LOGIN', onPressed: () {}),
                _CreateAccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 100),
          CustomInput(title: 'USERNAME'),
          SizedBox(height: 60),
          CustomInput(title: 'PASSWORD', showButton: true, hideTextByDefault: true),
          SizedBox(height: 25),
          _ForgotPassword(),
        ],
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40),
      child: Align(
        child: MaterialButton(
          child: Text('Forgot your password?'),
          onPressed: () {
            print('sdasdadaad');
          },
          textColor: Theme.of(context).textTheme.bodyText1!.color!.withAlpha(160),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}

class _CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          child: Text('Create Account'),
          onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
          textColor: Theme.of(context).textTheme.bodyText1!.color!.withAlpha(160),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
    );
  }
}
