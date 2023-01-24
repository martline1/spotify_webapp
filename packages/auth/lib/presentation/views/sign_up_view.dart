import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up view'),
      ),
      body: const Center(
        child: Text('Sign up view'),
      ),
    );
  }
}
