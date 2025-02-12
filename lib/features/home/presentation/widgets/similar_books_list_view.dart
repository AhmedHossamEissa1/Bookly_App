import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: FeaturesListViewItem(imgUrl: 'assets/images/spiderman.jpg',),
        );
      },
    );
    ;
  }
}
