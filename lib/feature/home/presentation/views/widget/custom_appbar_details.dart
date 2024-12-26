import 'package:flutter/material.dart';

class CustomAppbarDtails extends StatelessWidget {
  const CustomAppbarDtails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close)),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
