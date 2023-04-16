import 'package:flutter/material.dart';

import '../shared/widget/password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Please enter the new password'),
          ),
          PasswordFormField(
            labelText: 'Password',
          ),
          PasswordFormField(
            labelText: 'Confirm Password',
          ),
          ElevatedButton(onPressed: (){}, child: Text('Confirm'))
        ],
      ),
    );
  }
}
