// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../core/utils/style.dart';

class RatingBook extends StatelessWidget {
  RatingBook(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4f),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
        const SizedBox(
          width: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "($count)",
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
