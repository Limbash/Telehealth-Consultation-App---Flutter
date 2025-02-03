import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telehealth_consultation_app/core/providers/theme_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(themeMode == ThemeMode.dark
                ? Icons.light_mode
                : Icons.dark_mode),
            onPressed: () {
              // Toggle between light and dark modes
              ref.read(themeModeProvider.notifier).state =
                  themeMode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark;
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to Telehealth Consultation App!',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
