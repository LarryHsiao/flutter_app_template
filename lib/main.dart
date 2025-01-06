import 'package:flutter/material.dart';
import 'package:flutter_app_template/routing/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

/// Entry point of app.
class App extends ConsumerWidget {
  /// Ctor.
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: route,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
    );
  }
}
