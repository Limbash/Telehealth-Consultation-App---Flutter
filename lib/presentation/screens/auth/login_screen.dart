import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth_consultation_app/core/providers/auth_provider.dart';
import 'package:telehealth_consultation_app/core/providers/user_provider.dart';
import 'package:telehealth_consultation_app/data/models/user_model.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate a successful login
                final user = User(
                  id: '123',
                  name: 'Limbash',
                  email: emailController.text,
                );
                ref.read(userProvider.notifier).state =
                    user; // Update user data
                ref.read(authProvider.notifier).state =
                    true; // Set authenticated
                context.go('/home'); // Navigate to the home screen
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
