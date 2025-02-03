import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telehealth_consultation_app/core/providers/theme_provider.dart';
import 'package:telehealth_consultation_app/core/theme/app_theme.dart';
import 'package:telehealth_consultation_app/presentation/routes/app_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider); // Watch the theme mode

    return MaterialApp.router(
      title: 'Telehealth Consultation App',
      theme: AppTheme.lightTheme(context), // Light Theme
      darkTheme: AppTheme.darkTheme(context), // Dark Theme
      themeMode: themeMode, // Use the theme mode from the provider
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
