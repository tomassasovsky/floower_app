import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  CustomInput({
    required this.title,
    this.showButton = false,
    this.hideTextByDefault = false,
    this.keyboardType = TextInputType.name,
  });

  final String title;
  final bool showButton;
  final bool hideTextByDefault;
  final TextInputType keyboardType;

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late bool hidePassword;
  String buttonText = 'SHOW';
  @override
  initState() {
    super.initState();
    hidePassword = widget.hideTextByDefault;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        cursorColor: Theme.of(context).textTheme.subtitle1!.color!.withAlpha(200),
        cursorWidth: .5,
        keyboardType: this.widget.keyboardType,
        obscureText: this.hidePassword,
        decoration: InputDecoration(
          labelText: this.widget.title,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: Theme.of(context).textTheme.subtitle1!.color!.withAlpha(200), letterSpacing: 1.5, fontSize: 18, fontWeight: FontWeight.w600),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: this.widget.showButton
              ? Container(
                  child: MaterialButton(
                    child: Text(buttonText),
                    onPressed: () {
                      setState(() {
                        if (hidePassword)
                          buttonText = 'HIDE';
                        else
                          buttonText = 'SHOW';
                        this.hidePassword = !this.hidePassword;
                      });
                    },
                    shape: StadiumBorder(),
                    minWidth: 60,
                    textColor: Colors.blue,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
