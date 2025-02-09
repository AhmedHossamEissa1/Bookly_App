import 'package:bookly_app/core/utils/ApiService.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final Apiservice apiservice;

  HomeRepoImplementation(this.apiservice);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiservice.get(
          'volumes?filtering=free-ebooks&sorting=newest&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() {
    // TODO: implement fetchFeaturesBooks
    throw UnimplementedError();
  }
}
