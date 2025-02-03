import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Telehealth Consultation App',
              style: TextStyle(
                fontSize: screenWidth * 0.06, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Responsive spacing
            Icon(
              Icons.medical_services,
              size: screenWidth * 0.2, // Responsive icon size
            ),
          ],
        ),
      ),
    );
  }
}
