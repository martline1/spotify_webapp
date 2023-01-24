import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? label;
  final String? hintText;
  final bool isPassword;
  final TextInputType? keyboardType;

  final bool Function(String) validator;

  const CustomInput({
    super.key,
    this.label,
    this.hintText,
    this.keyboardType,
    this.isPassword = false,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: const TextStyle(
              fontSize: 14,
              height: 1.25,
              fontWeight: FontWeight.w700,
            ),
          ),
        if (label != null) const SizedBox(height: 8),
        TextFormField(
          obscureText: isPassword,
          enableSuggestions: !isPassword,
          autocorrect: !isPassword,
          cursorColor: Colors.black,
          keyboardType: keyboardType,
          decoration: InputDecoration(hintText: hintText),
          validator: (String? rawValue) {
            String value = rawValue ?? '';

            bool isValid = validator(value);

            return isValid ? null : '';
          },
        ),
      ],
    );
  }
}
