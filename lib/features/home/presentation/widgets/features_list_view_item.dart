import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  final String imgUrl;
  const FeaturesListViewItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
