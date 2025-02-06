import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_book.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 26, vertical: 35), // Adjust the factor as needed
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBarBookDetails(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      screenWidth * 0.15), // Example: 5% of screen width
              child: FeaturesListViewItem(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The Jungle Book",
              style: Styles.textStyle28,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18
                  .copyWith(color: Colors.white.withOpacity(.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBook(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
