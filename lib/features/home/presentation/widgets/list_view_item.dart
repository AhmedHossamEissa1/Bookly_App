import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          width: 100,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(AssetsData.spiderMan),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
