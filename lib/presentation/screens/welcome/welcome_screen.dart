import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Telehealth Consultation App!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/login'); // Navigate to the Login Screen
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
