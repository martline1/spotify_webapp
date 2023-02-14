import 'package:go_router/go_router.dart';

import 'package:core/utils/empty_page_builder.dart';

class Redirect extends GoRoute {
  @override
  final String path;
  final String to;

  Redirect({required this.path, required this.to})
      : super(
          path: path,
          builder: emptyPageBuilder,
          redirect: (context, state) => to,
        );
}
