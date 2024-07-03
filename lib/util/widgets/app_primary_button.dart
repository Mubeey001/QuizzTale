import 'package:flutter/material.dart';
import 'package:project/util/Constans/size.dart';

class AppPrimarybutton extends StatelessWidget {
  const AppPrimarybutton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
  });

  final String buttonText;
  final Color buttonColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: buttonColor,
      ),
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: 16.0),
      )),
    );
  }
}
