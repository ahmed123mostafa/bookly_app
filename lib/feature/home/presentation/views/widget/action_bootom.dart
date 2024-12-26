import 'package:flutter/material.dart';
import 'package:kk/core/function/Url_function.dart';
import 'package:kk/feature/home/data/models/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widget/Custom_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBottom(
            text: "free",
            textcolor: Colors.black,
            backgroundcolor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomBottom(
            onpressed: () async {
              luanchcustomurl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(bookModel),
            textcolor: Colors.white,
            fontsize: 20,
            backgroundcolor: Color(0xffEf8262),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return "Thete is not available";
  } else {
    return "preview";
  }
}
