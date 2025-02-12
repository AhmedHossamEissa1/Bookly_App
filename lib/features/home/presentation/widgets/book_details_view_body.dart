import 'package:bookly_app/core/utils/widgets/custom_text_button.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_book.dart';
import 'package:bookly_app/features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          right: 26, left: 26, top: 30), // Adjust the factor as needed
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBarBookDetails(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      screenWidth * 0.22), // Example: 5% of screen width
              // ignore: prefer_const_constructors
              child: FeaturesListViewItem(imgUrl: 'assets/images/spiderman.jpg',),
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
                RatingBook(rating: 11, count: 213,),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                    txt: "19.99€",
                    border: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    backGroundColor: Colors.white,
                    textColor: Colors.black),
                CustomTextButton(
                  txt: "Free preview",
                  border: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  backGroundColor: Color(0xffEF8262),
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("You can also like"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: screenHeight * 0.15,
              child: SimilarBooksListView(),
            )
          ],
        ),
      ),
    );
  }
}
