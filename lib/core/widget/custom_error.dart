import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errormeassage});
  final String errormeassage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errormeassage,
      style: Styles.textStyle18,
    );
  }
}
