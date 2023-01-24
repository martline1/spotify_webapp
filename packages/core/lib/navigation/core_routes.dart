import 'package:core/utils/empty_page_builder.dart';
import 'package:go_router/go_router.dart';

final GoRoute coreRoutes = GoRoute(
  path: '/',
  builder: emptyPageBuilder,
  redirect: (context, state) => '/auth',
);
