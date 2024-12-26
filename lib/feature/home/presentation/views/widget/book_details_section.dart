import 'package:flutter/material.dart';
import 'package:kk/feature/home/data/models/book_model.dart';

import 'package:kk/feature/home/presentation/views/widget/action_bootom.dart';
import 'package:kk/feature/home/presentation/views/widget/custom_item.dart';
import 'package:kk/feature/home/presentation/views/widget/rating_book.dart';

import '../../../../../core/utils/style.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: CustomListviewItem(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ""),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors?[0] ?? "",
              style: Styles.textStyle18.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            )),
        const SizedBox(
          height: 20,
        ),
        RatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
        ActionButton(
          bookModel: book,
        ),
      ],
    );
  }
}
