import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kk/core/widget/custom_error.dart';
import 'package:kk/core/widget/custom_loading_indicator.dart';
import 'package:kk/feature/home/presentation/manager/newset_book_cubit/newset_book_cubit.dart';
import 'package:kk/feature/home/presentation/views/widget/best_seller_item.dart';

class Bestsellerview extends StatelessWidget {
  const Bestsellerview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccsess) {
          return ListView.builder(
            itemCount: state.books.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListviewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBookFailire) {
          return CustomError(errormeassage: state.errormessage);
        } else {
          return CustomLoadingIndicatore();
        }
      },
    );
  }
}
