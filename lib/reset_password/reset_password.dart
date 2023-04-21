import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../shared/widget/password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset Password',
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 41.0, vertical: 80.0),
        child: Column(
          children: [
            Center(
              child: Text('Please enter the new password'),
            ),
            SizedBox(
              height: 40,
            ),
            PasswordFormField(
              labelText: 'Password',
              helperText: HELPER_TEXT,
            ),
            SizedBox(
              height: 20,
            ),
            PasswordFormField(
              labelText: 'Confirm Password',
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Confirm',
              ),
            )
          ],
        ),
      ),
    );
  }
}
