import 'package:auth/navigation/auth_routes.dart';
import 'package:core/utils/utils.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: emptyPageBuilder,
      redirect: (context, state) => '/auth',
    ),
    authRoutes,
  ],
);
