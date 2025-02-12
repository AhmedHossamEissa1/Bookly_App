import 'package:bookly_app/core/utils/widgets/custom_text_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widgets/CustomImage.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/widgets/features_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/widgets/rating_book.dart';
import 'package:bookly_app/features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
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
                child: Customimage(
                    imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    // Ensure text does not exceed the screen width
                    child: Text(
                      bookModel.volumeInfo.title ?? "",
                      style: Styles.textStyle26,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2, // Restrict to 1 line to prevent overflow
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                (bookModel.volumeInfo.authors != null &&
                        bookModel.volumeInfo.authors!.isNotEmpty)
                    ? bookModel.volumeInfo.authors![0]
                    : "",
                style: Styles.textStyle18
                    .copyWith(color: Colors.white.withOpacity(.7)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBook(
                    rating: 4,
                    count: 200,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(
                      txt: "Free",
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
      ),
    );
  }
}
