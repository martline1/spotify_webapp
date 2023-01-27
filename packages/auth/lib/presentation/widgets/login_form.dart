import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/widgets.dart';
import 'package:ui/themes/themes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInput(
            label: 'Email address or username',
            hintText: 'Email address or username',
            keyboardType: TextInputType.emailAddress,
            validator: (String value) => value.contains("@"),
          ),
          const SizedBox(height: 16),
          CustomInput(
            label: 'Password',
            hintText: 'Password',
            isPassword: true,
            validator: (String value) => value.isNotEmpty,
          ),
          const SizedBox(height: 16),
          const GoRouterLink(
            text: 'Forgot your password?',
            path: '/auth/forgot_password',
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckbox(
                value: true,
                onChanged: (_) {},
                label: const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              RoundedButton(
                text: "Log in",
                onPressed: () {},
                color: Colors.black,
                minimumSize: const Size(121, 55),
                letterSpacing: 1.498,
                backgroundColor: LightTheme.primaryColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
