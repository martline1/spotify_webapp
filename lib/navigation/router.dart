import 'package:auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:core/utils/utils.dart';
import 'package:auth/navigation/auth_routes.dart';
import 'package:routing/presentation/bloc/listeners/listeners.dart';
import 'package:routing/presentation/bloc/routing_bloc.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: emptyPageBuilder,
      redirect: (context, state) => '/auth',
    ),
    GoRoute(
      path: '/',
      builder: emptyPageBuilder,
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<AuthBloc>(
                  create: (context) => GetIt.I<AuthBloc>(),
                ),
                BlocProvider<RoutingBloc>(
                  create: (context) => GetIt.I<RoutingBloc>(),
                ),
              ],
              child: RouteChangeListener(child: child),
            );
          },
          routes: [
            authRoutes,
          ],
        ),
      ],
    ),
  ],
);
