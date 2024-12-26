import 'package:flutter/material.dart';

class CustomLoadingIndicatore extends StatelessWidget {
  const CustomLoadingIndicatore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
