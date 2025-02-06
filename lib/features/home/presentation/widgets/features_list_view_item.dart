import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  const FeaturesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AssetsData.spiderMan),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
