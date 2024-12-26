part of 'newset_book_cubit.dart';

class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

class NewsetBookInitial extends NewsetBookState {}

class NewsetBookLoading extends NewsetBookState {}

class NewsetBookSuccsess extends NewsetBookState {
  final List<BookModel> books;

  const NewsetBookSuccsess(this.books);
}

class NewsetBookFailire extends NewsetBookState {
  final String errormessage;

  const NewsetBookFailire(this.errormessage);
}
