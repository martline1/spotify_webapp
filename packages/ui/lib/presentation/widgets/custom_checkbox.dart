import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final Widget? label;

  const CustomCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
  });

  Widget get _checkbox {
    return Transform.scale(
      scale: 0.85,
      child: SizedBox(
        width: 16,
        height: 16,
        child: Center(
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            splashRadius: 8,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (label == null) return _checkbox;

    return Row(children: <Widget>[
      _checkbox,
      const SizedBox(width: 8),
      label!,
    ]);
  }
}
