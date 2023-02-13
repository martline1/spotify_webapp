import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:spotify_webapp/di/di.dart';
import 'package:spotify_webapp/app.dart';

void main() {
  // Configure Dependencies
  LibDi();

  setPathUrlStrategy();
  runApp(const App());
}
