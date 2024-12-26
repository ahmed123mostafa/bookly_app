part of 'featuerdbooks_cubit.dart';

class FeatuerdbooksState extends Equatable {
  const FeatuerdbooksState();

  @override
  List<Object> get props => [];
}

class FeatuerdbooksInitial extends FeatuerdbooksState {}

class FeatuerdbooksSuccsess extends FeatuerdbooksState {
  final List<BookModel> books;

  const FeatuerdbooksSuccsess(this.books);
}

class FeatuerdbooksLoading extends FeatuerdbooksState {}

class Featuerdbooksfailure extends FeatuerdbooksState {
  final String errmessage;

  const Featuerdbooksfailure(this.errmessage);
}
