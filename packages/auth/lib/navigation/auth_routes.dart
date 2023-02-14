import 'package:core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:auth/presentation/views/views.dart';

/// Each module must have a single main route.
///
/// Here "/auth" is the main route for the auth module.
/// but as soon as the user enters the auth module, it will be redirected to "/auth/login".
final List<RouteBase> authRoutes = [
  // Default route is login
  Redirect(
    path: 'auth',
    to: '/auth/login',
  ),

  GoRoute(
    path: 'auth',
    builder: emptyPageBuilder,
    routes: <RouteBase>[
      GoRoute(
        path: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: "sign_up",
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
    ],
  )
];
