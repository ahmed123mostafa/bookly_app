part of 'similair_book_cubit.dart';

sealed class SimilairBookState extends Equatable {
  const SimilairBookState();

  @override
  List<Object> get props => [];
}

final class SimilairBookInitial extends SimilairBookState {}

final class SimilairBookLoading extends SimilairBookState {}

final class SimilairBookSucses extends SimilairBookState {
  final List<BookModel> books;

  const SimilairBookSucses({required this.books});
}

final class SimilairBookFailuir extends SimilairBookState {
  final String errmessage;

  const SimilairBookFailuir({required this.errmessage});
}
