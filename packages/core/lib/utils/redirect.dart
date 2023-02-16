import 'package:go_router/go_router.dart';

import 'package:core/utils/empty_page_builder.dart';

class Redirect extends GoRoute {
  final String to;

  Redirect({required String path, required this.to})
      : super(
          path: path,
          builder: emptyPageBuilder,
          redirect: (context, state) => to,
        );
}
