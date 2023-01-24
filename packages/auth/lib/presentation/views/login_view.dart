import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/widgets.dart';
import 'package:auth/presentation/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SpotifyLoginHeader(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Column(
                children: [
                  Text(
                    'To continue, log in to Spotify.',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(height: 10),
                  const LoginOptions(),
                  const SizedBox(height: 10),
                  const SeparatorText(text: 'OR'),
                  const SizedBox(height: 10),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
