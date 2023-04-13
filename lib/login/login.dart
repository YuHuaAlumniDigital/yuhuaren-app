import 'package:flutter/material.dart';

import '../shared/widget/password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: Column(
          children: [
            const Center(
                child: Text(
              "LOGO",
              style: TextStyle(fontSize: 80),
            )),
            const Text("Welcome to Yu Hua Alumni"),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                // hintText: 'Username',
                labelText: 'Username',
              ),
            ),
            PasswordFormField(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
            ),
            InkWell(onTap: () {}, child: Text('Forgot Password?')),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
