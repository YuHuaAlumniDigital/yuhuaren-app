import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:yuhuaren_app/shared/color.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Number Verification'),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 41.0,
          vertical: 80.0,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'The verification code is sent to your phone number 012-1234567.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            FittedBox(
              child: OtpTextField(
                numberOfFields: 6,
                showFieldAsBox: true,
                fieldWidth: 60,
                enabledBorderColor: primary,
                focusedBorderColor: primary,
                cursorColor: primary,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text('Please enter 6-digits that received via SMS.'),
            ),
            SizedBox(
              height: 180,
            ),
            Center(
              child: Opacity(
                opacity: 0.25,
                child: Text(
                  'Resend Code in 60 s',
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
