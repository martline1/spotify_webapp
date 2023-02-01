import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/widgets.dart';
import 'package:auth/presentation/widgets/login_form_actions.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInput(
            controller: emailController,
            label: 'Email address or username',
            hintText: 'Email address or username',
            keyboardType: TextInputType.emailAddress,
            validator: (String value) {
              if (value.contains("@")) return null;

              return 'Please enter your Spotify username or email address.';
            },
          ),
          const SizedBox(height: 16),
          CustomInput(
            controller: passwordController,
            label: 'Password',
            hintText: 'Password',
            isPassword: true,
            validator: (String value) {
              if (value.isNotEmpty) return null;

              return 'Please enter your password.';
            },
          ),
          const SizedBox(height: 16),
          const GoRouterLink(
            text: 'Forgot your password?',
            path: '/auth/forgot_password',
          ),
          const SizedBox(height: 10),
          LoginFormActions(
            formKey: formKey,
            emailController: emailController,
            passwordController: passwordController,
          ),
        ],
      ),
    );
  }
}
