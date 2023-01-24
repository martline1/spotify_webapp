import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Widget? iconWidget;
  final bool disableUppercase;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconWidget,
    this.backgroundColor,
    this.disableUppercase = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!_backgroundColorIsDefined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(backgroundColor: backgroundColor),
        child: _renderButtonContent,
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      child: _renderButtonContent,
    );
  }

  bool get _backgroundColorIsDefined => backgroundColor != null;

  TextStyle get _textStyle {
    return TextStyle(
      color: _backgroundColorIsDefined ? Colors.white : const Color(0xFF6a6a6a),
      fontWeight: FontWeight.w700,
      letterSpacing: 0.107,
    );
  }

  Row get _renderButtonContent {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) Icon(icon),
        if (iconWidget != null) iconWidget!,
        if (icon != null || iconWidget != null) const SizedBox(width: 10),
        Text(disableUppercase ? text : text.toUpperCase(), style: _textStyle),
      ],
    );
  }
}
