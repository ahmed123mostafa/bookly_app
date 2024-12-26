// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kk/feature/home/data/repos/home_repos.dart';

import '../../../data/models/book_model.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;
  Future<void> FetchNewsetBook() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewestBook();
    result.fold((faliure) {
      emit(NewsetBookFailire(faliure.errmessage));
    }, (books) {
      emit(NewsetBookSuccsess(books));
    });
  }
}
