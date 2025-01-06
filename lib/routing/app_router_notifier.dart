import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

/// The notifier of the application router.
/// [notifyListeners] method is used to notify [GoRouter] to refresh the page.
///
/// See also [AppRoute].
class AppRouterNotifier extends ChangeNotifier {
  /// Ctor
  AppRouterNotifier() {
    // TODO(larryhsiao): Listen the providers that will refresh the page.
  }
}
