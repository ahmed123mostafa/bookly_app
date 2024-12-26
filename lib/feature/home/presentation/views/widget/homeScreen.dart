import 'package:flutter/material.dart';
import 'package:kk/core/utils/style.dart';
import 'package:kk/feature/home/presentation/views/widget/best_seller_listview.dart';

import 'custom_appbar.dart';
import 'custom_item_list_view.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomAppbar(),
                  SizedBox(
                    height: 10,
                  ),
                  Customlistview(),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text("Newset books", style: Styles.textStyle18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ))),
      const SliverFillRemaining(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Bestsellerview()),
      ),
    ]);
  }
}
