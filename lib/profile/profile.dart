import 'package:flutter/material.dart';
import 'package:yuhuaren_app/navigation/buttom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Profile'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: EditTextFormField(
                labelText: 'Name',
                initialValue: 'Sum Yin Chuang',
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: EditTextFormField(
              labelText: 'Phone Number',
              initialValue: '012-3456789',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: EditTextFormField(
              labelText: 'Email',
              initialValue: 'example@email.com',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: EditTextFormField(
              labelText: 'Password',
              obscureText: true,
              initialValue: 'asdf1234',
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class EditTextFormField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final String initialValue;

  const EditTextFormField(
      {super.key,
      required this.labelText,
      this.initialValue = '',
      this.obscureText = false});

  @override
  State<EditTextFormField> createState() => _EditTextFormFieldState();
}

class _EditTextFormFieldState extends State<EditTextFormField> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: widget.labelText,
            ),
            initialValue: widget.initialValue,
            obscureText: widget.obscureText,
            enabled: _enabled,
          ),
        ),
        InkWell(
          child: Text('Edit'),
          onTap: () {
            setState(() {
              _enabled = !_enabled;
            });
          },
        )
      ],
    );
  }
}
