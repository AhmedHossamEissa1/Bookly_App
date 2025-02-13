import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/manager/similar_books_cubit/similar_books_states.dart';
import 'package:bookly_app/features/home/presentation/widgets/CustomImage.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:bookly_app/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouters.kBookDetailsView,
                        extra: state.books[index]);
                  },
                  child: Customimage(
                      imgUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              ''),
                ),
              );
            },
          );
        } else if (state is SimilarBooksFail) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}


