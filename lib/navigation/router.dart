import 'package:go_router/go_router.dart';

import 'package:core/utils/utils.dart';
import 'package:spotify_webapp/navigation/routes_with_global_providers.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    // Initial Redirect, outside to prevent overwriting
    // the sub-route's redirects
    Redirect(
      path: '/',
      to: '/auth',
    ),

    Redirect(path: '/login', to: '/auth/login'),
    Redirect(path: '/sign_up', to: '/auth/sign_up'),

    // Each package has its own routes
    // and all are encapsulated in the global bloc providers
    GoRoute(
      path: '/',
      builder: emptyPageBuilder,
      routes: [routesWithGlobalProviders],
    ),
  ],
);
