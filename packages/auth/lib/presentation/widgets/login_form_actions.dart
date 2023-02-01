import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auth/presentation/bloc/auth_bloc.dart';
import 'package:auth/presentation/bloc/auth_state.dart';
import 'package:ui/presentation/widgets/widgets.dart';
import 'package:ui/themes/themes.dart';

class LoginFormActions extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginFormActions({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckbox(
            value: state.rememberMe,
            onChanged: (_) =>
                context.read<AuthBloc>().add(ToggleRememberMeEvent()),
            label: const Text(
              'Remember me',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          RoundedButton(
            disabled: state.loginLoading,
            text: "Log in",
            onPressed: () {
              if (!formKey.currentState!.validate()) return;

              context.read<AuthBloc>().add(LoginEvent(
                  email: emailController.text,
                  password: passwordController.text));
            },
            color: Colors.black,
            minimumSize: const Size(121, 55),
            letterSpacing: 1.498,
            backgroundColor: LightTheme.primaryColor,
          )
        ],
      ),
    );
  }
}
