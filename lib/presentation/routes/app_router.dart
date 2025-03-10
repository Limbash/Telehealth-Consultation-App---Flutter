import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:telehealth_consultation_app/presentation/screens/auth/login_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/auth/signup_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/home/home_screen.dart';
import 'package:telehealth_consultation_app/presentation/screens/splash/splashscreen.dart';
import 'package:telehealth_consultation_app/presentation/screens/welcome/welcome_screen.dart';

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

      // Welcome Screen
      GoRoute(
        path: '/welcome',
        builder: (BuildContext context, GoRouterState state) {
          return WelcomeScreen();
        },
      ),

      // Login Screen
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return LoginPage();
        },
      ),

      // Signup Screen
      GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) {
          return SignUpPage();
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
