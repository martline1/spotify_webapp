import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:auth/presentation/bloc/auth_bloc.dart';
import 'package:auth/navigation/auth_routes.dart';
import 'package:routing/presentation/bloc/listeners/listeners.dart';
import 'package:routing/presentation/bloc/routing_bloc.dart';

final RouteBase routesWithGlobalProviders = ShellRoute(
  builder: (context, state, child) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => GetIt.I(),
        ),
        BlocProvider<RoutingBloc>(
          create: (context) => GetIt.I(),
        ),
      ],
      child: RouteChangeListener(child: child),
    );
  },
  routes: [
    ...authRoutes,
  ],
);
