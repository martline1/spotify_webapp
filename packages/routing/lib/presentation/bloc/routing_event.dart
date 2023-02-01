part of 'routing_bloc.dart';

abstract class RoutingEvent {}

class PushEvent extends RoutingEvent {
  final String routeName;
  final Object? arguments;

  PushEvent(this.routeName, {this.arguments});
}

class PopEvent extends RoutingEvent {
  final bool requestingTheFireOfPop;

  PopEvent(this.requestingTheFireOfPop);
}
