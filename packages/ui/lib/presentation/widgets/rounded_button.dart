import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Widget? iconWidget;
  final bool disableUppercase;
  final bool disabled;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final Size? minimumSize;
  final Color? color;
  final double? letterSpacing;

  const RoundedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.iconWidget,
    this.backgroundColor,
    this.disableUppercase = false,
    this.disabled = false,
    this.minimumSize,
    this.color,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: disabled ? 0.3 : 1.0,
      duration: const Duration(milliseconds: 200),
      child: _button,
    );
  }

  ButtonStyleButton get _button {
    if (!_backgroundColorIsDefined) {
      return OutlinedButton(
        onPressed: disabled ? null : onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: backgroundColor,
          minimumSize: minimumSize,
        ),
        child: _renderButtonContent,
      );
    }

    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        disabledBackgroundColor: backgroundColor,
        minimumSize: minimumSize,
      ),
      child: _renderButtonContent,
    );
  }

  bool get _backgroundColorIsDefined => backgroundColor != null;

  Color get _textColor {
    if (color != null) return color!;

    return _backgroundColorIsDefined ? Colors.white : const Color(0xFF6a6a6a);
  }

  TextStyle get _textStyle {
    return TextStyle(
      color: _textColor,
      fontWeight: FontWeight.w700,
      letterSpacing: letterSpacing ?? 1.107,
    );
  }

  Row get _renderButtonContent {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) Icon(icon, color: Colors.white),
        if (iconWidget != null) iconWidget!,
        if (icon != null || iconWidget != null) const SizedBox(width: 10),
        Text(disableUppercase ? text : text.toUpperCase(), style: _textStyle),
      ],
    );
  }
}
