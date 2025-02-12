import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class SimilarBooksStates {}

class SimilarBooksInitial extends SimilarBooksStates {}

class SimilarBooksSuccess extends SimilarBooksStates {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SimilarBooksStates {}

class SimilarBooksFail extends SimilarBooksStates {
  final String errorMessage;

  SimilarBooksFail(this.errorMessage);
}
