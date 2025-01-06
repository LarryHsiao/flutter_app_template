#! /bin/sh

flutter gen-l10n
(($? != 0)) && { printf '%s\n' "Command exited with non-zero"; exit 1; }
flutter pub run build_runner build --delete-conflicting-outputs
(($? != 0)) && { printf '%s\n' "Command exited with non-zero"; exit 1; }
exit 0;