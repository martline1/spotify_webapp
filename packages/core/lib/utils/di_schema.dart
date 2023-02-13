import 'package:get_it/get_it.dart';

abstract class DiSchema {
  final GetIt getIt = GetIt.instance;

  DiSchema() {
    registerDataSources();
    registerRepositories();
    registerUsecases();
    registerBlocs();
  }

  void registerBlocs() {}

  void registerUsecases() {}

  void registerDataSources() {}

  void registerRepositories() {}
}
