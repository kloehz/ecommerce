import 'package:ecommerce/modules/index/presenter/view/index_view.dart';
import 'package:ecommerce/modules/login/presenter/view/login_view.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/index',
  routes: [
    GoRoute(
      path: '/index',
      builder: (context, state) => const IndexView(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
  ],
);
