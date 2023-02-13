import 'package:core/utils/utils.dart';
import 'package:routing/presentation/bloc/routing_bloc.dart';

class RoutingDi extends DiSchema {
  @override
  void registerBlocs() {
    getIt.registerSingleton(RoutingBloc());
  }
}
