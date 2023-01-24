import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FacebookIcon extends StatelessWidget {
  final Color? color;

  const FacebookIcon({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/facebook_icon.svg',
      semanticsLabel: 'Facebook Icon',
      package: 'ui',
      color: color,
      width: 20,
      height: 20,
    );
  }
}
