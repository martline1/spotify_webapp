import 'package:flutter/material.dart';

import 'package:ui/themes/themes.dart';
import 'package:core/navigation/core_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: coreRouter,
      theme: LightTheme.themeData,
    );
  }
}
