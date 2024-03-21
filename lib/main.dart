import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/theme.dart';

void main() {
  runApp(
    // ProviderScope() is MANDATORY to use Provider inside app
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const TabsScreen(),
    );
  }
}
