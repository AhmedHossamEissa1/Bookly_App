import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/featues_books_states.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeatursBooksStates>(
      builder: (context, state) {
        if (state is FeatursBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FeaturesListViewItem(),
              );
            },
          );
        } else if (state is FeatursBooksFail) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
