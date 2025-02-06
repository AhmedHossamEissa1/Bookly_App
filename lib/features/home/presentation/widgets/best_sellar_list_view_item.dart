import 'package:bookly_app/assets.dart';
import 'package:bookly_app/routers.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellarListViewItem extends StatelessWidget {
  const BestSellarListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => context.go(AppRouters.kBookDetailsView),
      child: SizedBox(
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(AssetsData.spiderMan),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * .67,
                    child: Text(
                      "Harry Potter\nand the Goblet of Fire",
                      style: Styles.textStyle24,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text("J.K. Rowling"),
                  Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle22,
                      ),
                      SizedBox(
                        width: screenWidth * 0.17,
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Color(0xffFFDD4F),
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "4.8",
                        style: Styles.textStyle18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(2390)",
                        style: TextStyle(color: Color(0xff979797)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
