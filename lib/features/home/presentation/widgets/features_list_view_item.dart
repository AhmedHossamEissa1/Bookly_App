import 'package:bookly_app/assets.dart';
import 'package:bookly_app/features/home/presentation/widgets/CustomImage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  final String imgUrl;
  const FeaturesListViewItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Customimage(imgUrl: imgUrl);
  }
}
