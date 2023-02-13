import 'package:core/utils/utils.dart';
import 'package:auth/di/auth_di.dart';
import 'package:routing/di/di.dart';

class LibDi extends DiSchema {
  /// Init all dependencies registration happens on the
  /// constructor of the class.
  LibDi() : super() {
    AuthDi();
    RoutingDi();
  }
}
