import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repos.dart';

part 'featuerdbooks_state.dart';

class FeatuerdbooksCubit extends Cubit<FeatuerdbooksState> {
  FeatuerdbooksCubit(this.homeRepo) : super(FeatuerdbooksInitial());
  final HomeRepo homeRepo;
  // ignore: non_constant_identifier_names
  Future<void> Fetchfaeturedbook() async {
    emit(FeatuerdbooksLoading());
    var result = await homeRepo.fetchFeaturedbook();
    result.fold((failure) {
      emit(Featuerdbooksfailure(failure.errmessage));
    }, (books) {
      emit(FeatuerdbooksSuccsess(books));
    });
  }
}
