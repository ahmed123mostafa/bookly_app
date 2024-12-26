import 'package:flutter/material.dart';

import '../../../../../home/presentation/views/widget/best_seller_listview.dart';

class SearchResultlistView extends StatelessWidget {
  const SearchResultlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(5),
          child: Bestsellerview(),
        );
      },
    );
  }
}
