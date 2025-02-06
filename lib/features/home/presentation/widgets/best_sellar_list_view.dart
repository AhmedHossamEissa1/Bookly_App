import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellarListView extends StatelessWidget {
  const BestSellarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true, // عشان ال custom scroll view
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return BestSellarListViewItem();
      },
    );
  }
}
