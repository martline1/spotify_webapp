import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleIcon extends StatelessWidget {
  final double? width;
  final double? height;

  const GoogleIcon({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/google_icon.svg',
      semanticsLabel: 'Google Icon',
      package: 'ui',
      width: width ?? 20,
      height: height ?? 20,
    );
  }
}
