import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final Icon? prefixIcon;
  final String? labelText;
  final BoxConstraints? constraints;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const PasswordFormField({
    super.key,
    this.prefixIcon,
    this.labelText,
    this.constraints,
    this.validator,
    this.helperText,
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
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
        constraints: widget.constraints,
        suffixIcon: IconButton(
          onPressed: toggleHidden,
          icon: Icon(suffixIcon),
        ),
        helperText: widget.helperText,
      ),
      validator: widget.validator,
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
