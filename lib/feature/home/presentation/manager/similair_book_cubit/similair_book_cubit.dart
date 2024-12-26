import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kk/feature/home/data/models/book_model.dart';
import 'package:kk/feature/home/data/repos/home_repos.dart';

part 'similair_book_state.dart';

class SimilairBookCubit extends Cubit<SimilairBookState> {
  SimilairBookCubit(this.homeRepo) : super(SimilairBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchsimilairBooks({required String catagory}) async {
    emit(SimilairBookLoading());
    var result = await homeRepo.fetchSimilairbook(catagory: catagory);
    result.fold((failuir) {
      emit(SimilairBookFailuir(errmessage: failuir.errmessage));
    }, (books) {
      emit(SimilairBookSucses(books: books));
    });
  }
}
