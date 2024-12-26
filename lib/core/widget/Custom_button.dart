import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.textcolor,
      required this.backgroundcolor,
      this.borderRadius,
      required this.text,
      this.fontsize,
      this.onpressed});
  final Color textcolor;
  final Color backgroundcolor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(text,
            style: Styles.textStyle18.copyWith(
                color: textcolor,
                fontWeight: FontWeight.w900,
                fontSize: fontsize)),
      ),
    );
  }
}
