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
            CurvedHeader(),
            SafeArea(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  _Title(),
                  _Form(),
                  BlueButton(text: 'REGISTER', onPressed: () {}),
                  _CreateAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 36, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('hello.', style: titleStyle),
          Text('welcome to floower', style: titleStyle),
        ],
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
          SizedBox(height: 60),
          CustomInput(title: 'NAME'),
          SizedBox(height: 30),
          CustomInput(title: 'E-MAIL', keyboardType: TextInputType.emailAddress),
          SizedBox(height: 30),
          CustomInput(title: 'USERNAME'),
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
