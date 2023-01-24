import 'package:flutter/material.dart';

import 'package:ui/presentation/widgets/icons/icons.dart';

class SpotifyLoginHeader extends StatelessWidget {
  const SpotifyLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 25, bottom: 10),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFd9dadc),
            width: 1,
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: const SpotifyLogo(width: 182, height: 56),
      ),
    );
  }
}
