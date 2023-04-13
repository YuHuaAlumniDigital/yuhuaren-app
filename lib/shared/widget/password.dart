import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final Icon? prefixIcon;
  final String? labelText;

  const PasswordFormField({
    super.key,
    this.prefixIcon,
    this.labelText,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  var _hidden = true;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(),
          labelText: widget.labelText,
          suffixIcon: IconButton(onPressed: toggleHidden, icon: Icon(suffixIcon))),
      obscureText: _hidden,
    );
  }

  toggleHidden() {
    setState(() {
      _hidden = !_hidden;
    });
  }

  get suffixIcon {
    return _hidden ? Icons.visibility : Icons.visibility_off;
  }
}