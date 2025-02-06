import 'package:bookly_app/assets.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/widgets/sliding_text.dart';
import 'package:bookly_app/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // with SingleTickerProviderStateMixin لازم اعملها عشان اقدر اتعامل مع الكنترولر
  late AnimationController animationController; // بتاخد قيمة من 0 الي 1
  late Animation<Offset> animation; // بتاخد اي قيم انا عايزها

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      GoRoute(path: AppRouters.kHomeView);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

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
        SlidingText(animation: animation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation = Tween(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}
