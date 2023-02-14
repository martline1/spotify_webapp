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
        if (!state.pushExecuted) {
          context.push(state.routeName, extra: state.arguments);
          context.read<RoutingBloc>().add(PushEventExecuted());
        } else if (!state.popExecuted && context.canPop()) {
          context.pop();
          context.read<RoutingBloc>().add(PopEventExecuted());
        }
      },
      child: child,
    );
  }
}
