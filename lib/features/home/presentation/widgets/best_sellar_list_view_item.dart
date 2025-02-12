import 'dart:math';

import 'package:bookly_app/assets.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/CustomImage.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_book.dart';
import 'package:bookly_app/routers.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellarListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BestSellarListViewItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Customimage(imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * .67,
                    child: Text(
                      bookModel.volumeInfo.title ?? "",
                      style: Styles.textStyle24,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    (bookModel.volumeInfo.authors != null &&
                            bookModel.volumeInfo.authors!.isNotEmpty)
                        ? bookModel.volumeInfo.authors![0]
                        : "",
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle22,
                      ),
                      SizedBox(
                        width: screenWidth * 0.17,
                      ),
                      RatingBook(
                        rating: Random().nextInt(5) + 1,
                        count: bookModel.volumeInfo.pageCount ?? 100,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
