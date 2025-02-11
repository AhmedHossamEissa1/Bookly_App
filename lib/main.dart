import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/features/home/manager/new_books_cubit/new_books_cubit.dart';
import 'package:bookly_app/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturesBooksCubit(getIt.get<HomeRepoImplementation>())..fetchFeaturesBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewBooksCubit(getIt.get<HomeRepoImplementation>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
