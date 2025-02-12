import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.close),
          color: Colors.white,
          iconSize: 32,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
          color: Colors.white,
          iconSize: 32,
        ),
      ],
    );
  }
}
