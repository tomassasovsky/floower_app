import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  final title;

  AuthTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(fontSize: 36, color: Theme.of(context).textTheme.bodyText1!.color!);
    return Container(
      margin: EdgeInsets.only(left: 40, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title[0], style: titleStyle),
          Text(title[1], style: titleStyle),
        ],
      ),
    );
  }
}
