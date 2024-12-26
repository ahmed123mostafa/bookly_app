import 'package:flutter/material.dart';
import 'package:kk/feature/home/presentation/views/widget/similai_book_listview.dart';

import '../../../../../core/utils/style.dart';

class SimilairBooksSection extends StatelessWidget {
  const SimilairBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also liked",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilairBookListView()
      ],
    );
  }
}
