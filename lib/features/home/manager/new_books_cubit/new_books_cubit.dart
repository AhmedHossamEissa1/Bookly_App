import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/featues_books_states.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_states.dart';

class NewBooksCubit extends Cubit<NewBooksStates> {
  NewBooksCubit(this.homeRepo) : super(NewBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewwwwwwBooks() async {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchNewsBooks();

    result.fold((left) {
      emit(NewBooksFail(left.errorMessage));
    }, (right) {
      emit(NewBooksSuccess(right));
    });
  }
}
