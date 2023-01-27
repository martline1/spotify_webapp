import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ui/themes/themes.dart';

class GoRouterLink extends StatefulWidget {
  final String text;
  final String path;

  const GoRouterLink({
    super.key,
    required this.text,
    required this.path,
  });

  @override
  State<GoRouterLink> createState() => _GoRouterLinkState();
}

class _GoRouterLinkState extends State<GoRouterLink> {
  bool _isHovering = false;

  void _onHover(bool value) => setState(() => _isHovering = value);

  Color get _color => _isHovering ? LightTheme.darkPrimaryColor : Colors.black;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () => context.go(widget.path),
      onHover: _onHover,
      child: Text(
        widget.text,
        style: TextStyle(
          shadows: [Shadow(color: _color, offset: const Offset(0, -2))],
          color: Colors.transparent,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          decorationColor: _color,
        ),
      ),
    );
  }
}
