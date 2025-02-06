import 'package:bookly_app/features/home/presentation/widgets/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 35),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBarBookDetails(),
          ],
        ),
      ),
    );
  }
}
