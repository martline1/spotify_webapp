import 'package:go_router/go_router.dart';

import 'package:auth/navigation/navigation.dart';
import 'package:core/navigation/navigation.dart';

final GoRouter coreRouter = GoRouter(
  routes: <RouteBase>[
    coreRoutes,
    authRoutes,
  ],
);
