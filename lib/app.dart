import 'package:flutter/material.dart';

import 'package:spotify_webapp/navigation/router.dart';
import 'package:ui/themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: LightTheme.themeData,
    );
  }
}
