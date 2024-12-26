import 'package:flutter/material.dart';
import 'package:kk/feature/home/data/models/book_model.dart';

import 'book_details_section.dart';
import 'custom_appbar_details.dart';
import 'similair_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    CustomAppbarDtails(),
                    SizedBox(
                      height: 15,
                    ),
                    BooksDetailsSection(
                      book: bookModel,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    SimilairBooksSection()
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
