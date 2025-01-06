import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension for [BuildContext].
extension ContextExtension on BuildContext {
  /// Get the l10n object for the keys of L10n string.
  AppLocalizations get i18n => AppLocalizations.of(this)!;

  /// Show a snackbar.
  void showSnackbar(String message, {bool overlayOther = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior:
            overlayOther ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      ),
    );
  }
}
