import 'package:e_bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.widgetText, required this.fontSize});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String widgetText;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16)),
          ),
          onPressed: () {},
          child: Text(
            widgetText,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900 ,fontSize: fontSize),
          )),
    );
  }
}
