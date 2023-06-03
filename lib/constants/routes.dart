import 'package:ecommerce/modules/home/presenter/view/home_view.dart';
import 'package:ecommerce/modules/index/presenter/view/index_view.dart';
import 'package:ecommerce/modules/login/presenter/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            animatedTransition(context, state, const IndexView()),
        routes: [
          GoRoute(
            path: 'login',
            pageBuilder: (context, state) =>
                animatedTransition(context, state, const LoginView()),
          ),
        ]),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) =>
          animatedTransition(context, state, const HomeView()),
    ),
  ],
);

CustomTransitionPage<dynamic> animatedTransition(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
      transitionDuration: const Duration(milliseconds: 600),
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      });
}
