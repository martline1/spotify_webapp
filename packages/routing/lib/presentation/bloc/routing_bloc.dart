import 'package:flutter_bloc/flutter_bloc.dart';

import 'routing_state.dart';

part 'routing_event.dart';

class RoutingBloc extends Bloc<RoutingEvent, RoutingState> {
  static const initialState = RoutingState(
    routeName: '/',
    arguments: null,
    pushExecuted: true,
    popExecuted: true,
  );

  RoutingBloc() : super(initialState) {
    on<PushEvent>((event, emit) {
      emit(state.copyWith(
        routeName: event.routeName,
        arguments: event.arguments,
        pushExecuted: false,
      ));
    });

    on<PushEventExecuted>((event, emit) {
      emit(state.copyWith(pushExecuted: true));
    });

    on<PopEvent>((event, emit) {
      emit(state.copyWith(popExecuted: false));
    });

    on<PopEventExecuted>((event, emit) {
      emit(state.copyWith(popExecuted: true));
    });
  }
}
