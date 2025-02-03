import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth_consultation_app/core/providers/theme_provider.dart';
import 'package:telehealth_consultation_app/core/theme/app_theme.dart';
import 'package:telehealth_consultation_app/presentation/screens/auth/login_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/auth/signup_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/home/home_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/splash/splashscreen.dart';

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

class AppRouter {
  // GoRouter instance
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // Splash Screen
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        },
      ),

      // Login Screen
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen();
        },
      ),

      // Signup Screen
      GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) {
          return SignupScreen();
        },
      ),

      // Home Screen
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
      ),
    ],
  );
}
