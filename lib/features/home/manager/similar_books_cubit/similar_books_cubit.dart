import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/featues_books_states.dart';
import 'package:bookly_app/features/home/manager/similar_books_cubit/similar_books_states.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarrBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold((left) {
      emit(SimilarBooksFail(left.errorMessage));
    }, (right) {
      emit(SimilarBooksSuccess(right));
    });
  }
}
