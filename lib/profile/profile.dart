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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EditTextFormField(
                padding: EdgeInsets.symmetric(vertical: 20),
                labelText: 'Name',
                initialValue: 'Sum Yin Chuang',
              ),
              EditTextFormField(
                padding: EdgeInsets.symmetric(vertical: 20),
                labelText: 'Phone Number',
                initialValue: '012-3456789',
              ),
              EditTextFormField(
                padding: EdgeInsets.symmetric(vertical: 20),
                labelText: 'Email',
                initialValue: 'example@email.com',
              ),
              EditTextFormField(
                padding: EdgeInsets.symmetric(vertical: 20),
                labelText: 'Password',
                obscureText: true,
                initialValue: 'asdf1234',
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff4DA5A4DE),
              blurRadius: 2,
              spreadRadius: 0,
              offset: const Offset(0, 1),
            ),
            BoxShadow(
              color: Color(0xff406664CC),
              blurRadius: 14,
              spreadRadius: 0,
              offset: const Offset(0, 1.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class EditTextFormField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final String initialValue;
  final EdgeInsetsGeometry padding;

  const EditTextFormField(
      {super.key,
      required this.labelText,
      this.initialValue = '',
      this.obscureText = false,
      this.padding = EdgeInsets.zero});

  @override
  State<EditTextFormField> createState() => _EditTextFormFieldState();
}

class _EditTextFormFieldState extends State<EditTextFormField> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.edit_outlined);
    var text = Text('Edit');

    return Padding(
      padding: widget.padding,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: widget.labelText,
                border: InputBorder.none,
              ),
              initialValue: widget.initialValue,
              obscureText: widget.obscureText,
              enabled: _enabled,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              setState(() {
                _enabled = !_enabled;
              });
            },
            icon: icon,
            label: text,
            style: TextButton.styleFrom(
              maximumSize: Size(200, 200),
              minimumSize: Size(10, 10),
            ),
          ),
        ],
      ),
    );
  }
}
