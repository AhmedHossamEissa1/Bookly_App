import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path:'/' ,
        builder: (BuildContext context, GoRouterState state) {
          return HomeView();
        },
      ),
      
          GoRoute(
            path:kBookDetailsView ,
            builder: (BuildContext context, GoRouterState state) {
              return BookDetailsView();
            },
          ),
  
    
    ],
  );
}
