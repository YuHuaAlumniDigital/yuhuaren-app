import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Image.asset('assets/images/first_page_background.png', ),
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/first_page_logo.png',
                width: 140,
              ),
              const SizedBox(height: 50,),
              const Text(
                "Welcome to Yu Hua Alumni",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
