import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:routing/presentation/bloc/routing_bloc.dart';
import 'package:routing/presentation/bloc/routing_state.dart';

class RouteChangeListener extends StatelessWidget {
  final Widget child;

  const RouteChangeListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RoutingBloc, RoutingState>(
      listener: (context, state) {
        if (state is PushEvent) {
          context.goNamed(state.routeName, extra: state.arguments);
        } else if (state is PopEvent) {
          if (!state.firePop || !context.canPop()) return;

          context.pop();
        }
      },
      child: child,
    );
  }
}
