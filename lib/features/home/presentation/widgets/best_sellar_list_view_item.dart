import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class BestSellarListViewItem extends StatelessWidget {
  const BestSellarListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AssetsData.spiderMan),
              fit: BoxFit.fill,
            )),
          ),
        ),
      ],
    );
  }
}
