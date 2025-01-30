import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: SvgPicture.asset(
          AssetsData.logo,
          width: 70,
          height: 70,
        )),
        SizedBox(
          height: 10,
        ),
        Text("Read Free Books")
      ],
    );
  }
}
