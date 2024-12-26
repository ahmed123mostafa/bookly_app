import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kk/core/widget/custom_error.dart';
import 'package:kk/core/widget/custom_loading_indicator.dart';
import 'package:kk/feature/home/presentation/manager/similair_book_cubit/similair_book_cubit.dart';
import 'package:kk/feature/home/presentation/views/widget/custom_item.dart';

class SimilairBookListView extends StatelessWidget {
  const SimilairBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilairBookCubit, SimilairBookState>(
      builder: (context, state) {
        if (state is SimilairBookSucses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomListviewItem(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            ""),
                  );
                }),
          );
        } else if (state is SimilairBookFailuir) {
          return CustomError(errormeassage: state.errmessage);
        } else {
          return CustomLoadingIndicatore();
        }
      },
    );
  }
}
