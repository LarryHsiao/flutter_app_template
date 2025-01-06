import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Page to tell user that the page is not found.
class NotFoundPage extends ConsumerWidget {
  /// Ctor
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Nothing here'),
    );
  }
}
