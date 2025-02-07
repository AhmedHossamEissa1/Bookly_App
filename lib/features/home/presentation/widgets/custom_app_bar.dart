import 'package:bookly_app/assets.dart';
import 'package:bookly_app/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 20,
          ),
          IconButton(
              color: Colors.white,
              onPressed: () {
                GoRouter.of(context).push(AppRouters.kSearchView);
              },
              icon: Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
