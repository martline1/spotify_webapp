import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_webapp/navigation/router.dart';

import 'package:ui/themes/themes.dart';
import 'package:routing/utils/utils.dart';
import 'package:routing/presentation/bloc/routing_bloc.dart';
import 'package:auth/presentation/bloc/auth_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<RoutingBloc>(
          create: (context) => RoutingBloc(),
        ),
      ],
      child: RouteChangeListener(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: LightTheme.themeData,
        ),
      ),
    );
  }
}
