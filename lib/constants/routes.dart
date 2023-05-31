import 'package:ecommerce/modules/index/presenter/view/index_view.dart';
import 'package:ecommerce/modules/login/presenter/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/index',
  routes: [
    GoRoute(
      path: '/index',
      pageBuilder: (context, state) =>
          animatedTransition(context, state, const IndexView()),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) =>
          animatedTransition(context, state, const LoginView()),
    ),
  ],
);

CustomTransitionPage<dynamic> animatedTransition(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      });
}
