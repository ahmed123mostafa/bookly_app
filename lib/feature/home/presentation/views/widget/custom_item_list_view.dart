import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kk/feature/home/presentation/views/widget/custom_item.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/custom_error.dart';
import '../../../../../core/widget/custom_loading_indicator.dart';
import '../../manager/featured_book_cubit/featuerdbooks_cubit.dart';

class Customlistview extends StatelessWidget {
  const Customlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdbooksCubit, FeatuerdbooksState>(
        builder: (context, state) {
      if (state is FeatuerdbooksSuccsess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomListviewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              }),
        );
      } else if (state is Featuerdbooksfailure) {
        return CustomError(
          errormeassage: state.errmessage,
        );
      } else {
        return const CustomLoadingIndicatore();
      }
    });
  }
}
