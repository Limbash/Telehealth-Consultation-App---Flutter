import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());

  void _verifyOTP() {
    String otp = _otpControllers.map((controller) => controller.text).join();
    if (otp.length == 6) {
      // Handle OTP verification logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP Verified: $otp')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a 6-digit OTP')),
      );
    }
  }

  Widget _buildOTPField(int index) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: _otpControllers[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if (value.isNotEmpty && index < 5) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please enter the 6-digit OTP sent to your phone",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, _buildOTPField),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _verifyOTP,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Verify OTP"),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Handle resend OTP logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OTP Resent')),
                );
              },
              child: Text("Resend OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
