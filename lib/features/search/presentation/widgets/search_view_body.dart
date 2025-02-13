import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view.dart';
import 'package:bookly_app/features/search/presentation/widgets/cutom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/widgets/search_list_view.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Results",
                style: Styles.textStyle22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchListView()
          ],
        ),
      ),
    );
  }
}
