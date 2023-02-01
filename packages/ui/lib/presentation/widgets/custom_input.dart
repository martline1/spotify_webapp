import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String? label;
  final String? hintText;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType? keyboardType;

  final String? Function(String) validator;

  const CustomInput({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.isPassword = false,
    required this.validator,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: const TextStyle(
              fontSize: 15,
              height: 1.25,
              fontWeight: FontWeight.w700,
            ),
          ),
        if (widget.label != null) const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword,
          enableSuggestions: !widget.isPassword,
          autocorrect: !widget.isPassword,
          cursorColor: Colors.black,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(hintText: widget.hintText),
          validator: (String? value) {
            final String? newErrorMessage = widget.validator(value ?? '');

            if (newErrorMessage != errorMessage) {
              setState(() => errorMessage = newErrorMessage);
            }

            return newErrorMessage;
          },
        ),
        if (errorMessage != null) const SizedBox(height: 8),
        if (errorMessage != null)
          Row(
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
                size: 16,
              ),
              const SizedBox(width: 5),
              Text(
                errorMessage!,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
      ],
    );
  }
}
