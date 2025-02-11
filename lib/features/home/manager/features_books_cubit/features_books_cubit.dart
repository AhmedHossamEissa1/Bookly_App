import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/featues_books_states.dart';

class FeaturesBooksCubit extends Cubit<FeatursBooksStates> {
  FeaturesBooksCubit(this.homeRepo) : super(FeatursBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturesBooks() async {
    emit(FeatursBooksLoading());
    var result = await homeRepo.fetchFeaturesBooks();

    result.fold((left) {
      emit(FeatursBooksFail(left.errorMessage));
    }, (right) {
      emit(FeatursBooksSuccess(right));
    });
  }
}
