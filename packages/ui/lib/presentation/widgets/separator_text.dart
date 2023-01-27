import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/widgets.dart';

class SeparatorText extends StatelessWidget {
  final String text;

  const SeparatorText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Row(children: [
        const ExpandedDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        const ExpandedDivider(),
      ]),
    );
  }
}
