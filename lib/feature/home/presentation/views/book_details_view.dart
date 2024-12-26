import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kk/feature/home/data/models/book_model.dart';
import 'package:kk/feature/home/presentation/manager/similair_book_cubit/similair_book_cubit.dart';
import 'package:kk/feature/home/presentation/views/widget/book_detail_view_body.dart';

class Bookdetailsview extends StatefulWidget {
  const Bookdetailsview({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<Bookdetailsview> createState() => _BookdetailsviewState();
}

class _BookdetailsviewState extends State<Bookdetailsview> {
  @override
  void initState() {
    BlocProvider.of<SimilairBookCubit>(context).fetchsimilairBooks(
        catagory: widget.bookModel.volumeInfo.categories![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BookDetailsViewBody(
      bookModel: widget.bookModel,
    )));
  }
}
