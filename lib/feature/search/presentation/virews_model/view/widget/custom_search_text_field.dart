import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomSearchtTextField extends StatelessWidget {
  const CustomSearchtTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: BuildOutLineInputBorder(),
          enabledBorder: BuildOutLineInputBorder(),
          hintText: "Search",
          suffixIcon: const Opacity(
              opacity: .8, child: Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildOutLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
