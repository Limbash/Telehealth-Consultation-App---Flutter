import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider to manage the app's theme mode
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system; // Default to system theme
});
