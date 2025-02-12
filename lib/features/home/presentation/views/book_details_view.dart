import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody()
    );
  }
}
