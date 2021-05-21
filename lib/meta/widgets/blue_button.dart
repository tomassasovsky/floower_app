import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const BlueButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 40, right: 40, top: 80, bottom: 20),
        width: double.infinity,
        child: MaterialButton(
          color: Colors.blue[300],
          splashColor: Colors.blue,
          child: Text(this.text, style: TextStyle(color: Colors.white)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
