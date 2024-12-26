import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kk/feature/home/data/models/book_model.dart';
import 'package:kk/feature/home/presentation/views/widget/custom_item.dart';

import '../../../../../../../constans.dart';
import '../../../../../core/utils/app_router.dart';

import '../../../../../core/utils/style.dart';
import 'rating_book.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomListviewItem(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Text(
                        "free",
                        style: Styles.textStyle20,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      RatingBook(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 0),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
