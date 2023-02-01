import 'package:flutter_bloc/flutter_bloc.dart';

import 'routing_state.dart';

part 'routing_event.dart';

class RoutingBloc extends Bloc<RoutingEvent, RoutingState> {
  static const initialState = RoutingState(
    routeName: '/',
    firePop: false,
    arguments: null,
  );

  RoutingBloc() : super(initialState) {
    on<PushEvent>((event, emit) {
      emit(state.copyWith(
        routeName: event.routeName,
        arguments: event.arguments,
      ));
    });

    on<PopEvent>((event, emit) {
      emit(state.copyWith(firePop: event.requestingTheFireOfPop));
    });
  }
}
