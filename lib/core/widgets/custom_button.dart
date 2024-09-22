import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.btnWidth,
         this.btnHeight,
      required this.bR,
      required this.bgColor,
      // required this.title,
      // required this.btnStyle,
      required this.onPressed, required this.child, this.padding});

  final double? btnWidth;
  final double? btnHeight;
  final double bR;
  final Color bgColor;
  // final String title;
  // final TextStyle btnStyle;
  final Widget child;
  final double? padding;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      height: btnHeight,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: padding??0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(bgColor),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(bR),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: child,
            // child: Text(
            //   title,
            //   style: btnStyle,
            // ),
          ),
        ),
      ),
    );
  }
}
