import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.txt,
    required this.border,
    required this.backGroundColor,
    required this.textColor,
    this.onPreased,
  });

  final String txt;
  final BorderRadius border;
  final Color backGroundColor;
  final Color textColor;
  final void Function()? onPreased;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.065,
      width: screenWidth * 0.4,
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: border,
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(backGroundColor),
          padding: WidgetStatePropertyAll(
              EdgeInsets.zero), // Fix for button behavior
        ),
        onPressed: onPreased,
        child: Text(
          txt,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
