import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_template/routing/app_router_notifier.dart';
import 'package:flutter_app_template/routing/not_found_page.dart';
import 'package:flutter_app_template/routing/placeholder_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// The route of the application.
enum AppRoute {
  /// The placeholder page.
  placeholder('/placeholder'),
  ;

  /// Ctor
  const AppRoute(this.path);

  /// Path of the route.
  final String path;
}

/// The provider of the application router.
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    final rootNavKey = GlobalKey<NavigatorState>();
    final goRouter = GoRouter(
      navigatorKey: rootNavKey,
      redirect: (context, state) => _redirect(context, ref, state),
      refreshListenable: AppRouterNotifier(),
      initialLocation: AppRoute.placeholder.path,
      routes: _routes(rootNavKey),
      errorBuilder: (context, _) => const NotFoundPage(),
    );
    return goRouter;
  },
);

List<RouteBase> _routes(GlobalKey<NavigatorState> rootNavKey) {
  return [
    GoRoute(
      path: AppRoute.placeholder.path,
      name: AppRoute.placeholder.path,
      builder: (_, __) => const PlaceHolderPage('Placeholder Page'),
    ),
  ];
}

FutureOr<String?> _redirect(
  BuildContext context,
  Ref ref,
  GoRouterState state,
) async {
  // TODO(larryhsiao): Redirect logic here.
  // i.g. redirect to login page if not logged in.
  return null;
}
