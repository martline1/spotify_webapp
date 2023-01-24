import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/widgets.dart';
import 'package:ui/presentation/widgets/icons/icons.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedButton(
          onPressed: () {},
          text: 'Continue with Facebook',
          iconWidget: const FacebookIcon(
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF1877f2),
        ),
        const SizedBox(height: 10),
        RoundedButton(
          onPressed: () {},
          text: 'Continue with Apple',
          icon: Icons.apple,
          backgroundColor: Colors.black.withOpacity(0.9),
        ),
        const SizedBox(height: 10),
        RoundedButton(
          onPressed: () {},
          text: 'Continue with Google',
          iconWidget: const GoogleIcon(width: 18, height: 18),
        ),
        const SizedBox(height: 10),
        RoundedButton(
          onPressed: () {},
          text: 'Continue with phone number',
        ),
      ],
    );
  }
}
