import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'The verification code is sent to your phone number 012-1234567.',
            textAlign: TextAlign.center,
          )),
          OtpTextField(
            numberOfFields: 6,
            showFieldAsBox: true,
          ),
          Center(
            child: Text('Please enter 6-digits that received via SMS.'),
          ),
          Center(
            child: Text('Resend Code in 60 s'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Submit'))
        ],
      ),
    );
  }
}
