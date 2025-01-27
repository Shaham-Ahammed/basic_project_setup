import 'package:flutter/material.dart';
import 'core/core_setup.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CoreSetup();
  }
}
