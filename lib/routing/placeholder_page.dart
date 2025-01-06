import 'package:flutter/material.dart';

/// Placeholder page for page that are in construction.
class PlaceHolderPage extends StatelessWidget {
  /// Ctor
  const PlaceHolderPage(this._title, {super.key});

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
