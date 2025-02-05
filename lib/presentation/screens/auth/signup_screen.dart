import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  void _sendOtp() {
    final email = _emailController.text;
    if (email.isNotEmpty) {
      // Mock sending OTP logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP sent to $email')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your email to receive an OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                "Create an Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Sign up to get started",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _otpController,
                      decoration: InputDecoration(
                        labelText: "OTP",
                        prefixIcon: Icon(Icons.security),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _sendOtp,
                    child: Text("Get Code"),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _confirmPasswordController,
                obscureText: _obscureConfirmPassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _toggleConfirmPasswordVisibility,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Sign Up"),
              ),
              SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Already have an account? Login"),
                ),
              ),
              SizedBox(height: 32),
              Center(
                child: Text(
                  "Or sign up with",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Google sign-up
                    },
                    icon: Icon(Icons.g_mobiledata, size: 40),
                    style: IconButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      // Handle Facebook sign-up
                    },
                    icon: Icon(Icons.facebook, size: 40),
                    style: IconButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      // Handle Apple sign-up
                    },
                    icon: Icon(Icons.apple, size: 40),
                    style: IconButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
