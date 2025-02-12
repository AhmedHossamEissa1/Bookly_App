import 'package:bookly_app/assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/CustomImage.dart';
import 'package:bookly_app/routers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturesListViewItem extends StatelessWidget {
  final BookModel bookModel;
  final String imgUrl;
  const FeaturesListViewItem({super.key, required this.imgUrl, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouters.kBookDetailsView, extra: bookModel);
        },
        child: Customimage(imgUrl: imgUrl));
  }
}
