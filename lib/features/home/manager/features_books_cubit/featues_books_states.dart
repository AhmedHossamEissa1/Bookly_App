import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class FeatursBooksStates {}

class FeatursBooksInitial extends FeatursBooksStates {}

class FeatursBooksSuccess extends FeatursBooksStates {
  final List<BookModel> books;

  FeatursBooksSuccess(this.books);
}

class FeatursBooksLoading extends FeatursBooksStates {}

class FeatursBooksFail extends FeatursBooksStates {
  final String errorMessage;

  FeatursBooksFail(this.errorMessage);
}
