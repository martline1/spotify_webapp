import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotifyLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const SpotifyLogo({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/spotify_logo.svg',
      semanticsLabel: 'Spotify Logo',
      package: 'ui',
      width: width ?? 20,
      height: height ?? 20,
    );
  }
}
