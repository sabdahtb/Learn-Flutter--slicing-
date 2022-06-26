import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  const IconWithText(
      {Key? key,
      required this.icon,
      required this.text,
      required this.theColor})
      : super(key: key);

  final IconData icon;
  final String text;
  final Color theColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: theColor,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: theColor),
        )
      ],
    );
  }
}
