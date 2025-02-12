import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  final String imgUrl;
  const FeaturesListViewItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
