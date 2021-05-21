import 'package:floower_app/meta/widgets/auth_title.dart';
import 'package:floower_app/meta/widgets/blue_button.dart';
import 'package:flutter/material.dart';

import 'package:floower_app/meta/widgets/header.dart';
import 'package:floower_app/meta/widgets/custom_input.dart';

class RegisterPage extends StatelessWidget {
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
                AuthTitle(
                  title: ['hello', 'welcome to floower'],
                ),
                _Form(),
                BlueButton(text: 'REGISTER', onPressed: () {}),
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
          SizedBox(height: 80),
          CustomInput(title: 'USERNAME'),
          SizedBox(height: 30),
          CustomInput(title: 'E-MAIL', keyboardType: TextInputType.emailAddress),
          SizedBox(height: 30),
          CustomInput(title: 'PASSWORD', showButton: true, hideTextByDefault: true, keyboardType: TextInputType.visiblePassword),
          SizedBox(height: 25),
        ],
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
          child: Text('Already have an account? Login'),
          onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
          textColor: Theme.of(context).textTheme.bodyText1!.color!.withAlpha(160),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
    );
  }
}
