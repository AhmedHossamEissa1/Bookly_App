import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class NewBooksStates {}

class InitialNewBooksStates extends NewBooksStates {}

class NewBooksSuccess extends NewBooksStates {
  final List<BookModel> books;

  NewBooksSuccess(this.books);
}

class NewBooksLoading extends NewBooksStates {}

class NewBooksFail extends NewBooksStates {
  final String errorMessage;

  NewBooksFail(this.errorMessage);
}