import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
