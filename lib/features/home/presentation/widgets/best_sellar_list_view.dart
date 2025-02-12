import 'dart:math';

import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/featues_books_states.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_cubit.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_states.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellarListView extends StatelessWidget {
  const BestSellarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksStates>(
      builder: (context, state) {
        if (state is NewBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            shrinkWrap: true, // عشان ال custom scroll view
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BestSellarListViewItem();
            },
          );
        } else if (state is NewBooksFail) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
