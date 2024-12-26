import 'package:dartz/dartz.dart';

import '../../../../core/error/failuire.dart';
import '../models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedbook();
  Future<Either<Failure, List<BookModel>>> fetchSimilairbook(
      {required String catagory});
}
