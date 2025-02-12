import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Customimage extends StatelessWidget {
  final String imgUrl;
  const Customimage({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgUrl,
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
