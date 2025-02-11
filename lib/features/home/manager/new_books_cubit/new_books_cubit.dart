import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_states.dart';

class NewBooksCubit extends Cubit<NewBooksStates> {
  NewBooksCubit(this.homeRepo) : super(InitialNewBooksStates());

  final HomeRepo homeRepo;

  Future<void> fetchNewBooks() async {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchFeaturesBooks();

    result.fold((left) {
      emit(NewBooksFail(left.errorMessage));
    }, (right) {
      emit(NewBooksSuccess(right));
    });
  }
}