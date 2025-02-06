import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_sellar_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: screenHeight * 0.32,
                  child: FeaturesListView(),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Best Sellar",
                  style: Styles.textStyle22,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: BestSellarListView()),
        ],
      ),
    );
  }
}
