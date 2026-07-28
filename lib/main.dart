import 'package:flutter/material.dart';

// Import all your screen and theme files
import 'theme.dart';
import 'main_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CosmicProblemApp());
}

class CosmicProblemApp extends StatelessWidget {
  const CosmicProblemApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmic Problem',
      debugShowCheckedModeBanner: false,
      
      // Apply the dark cosmic theme defined in theme.dart
      theme: CosmicTheme.darkTheme,
      
      // Set the main bottom navigation wrapper as the home widget
      home: const MainNavigationScreen(),
    );
  }
}
