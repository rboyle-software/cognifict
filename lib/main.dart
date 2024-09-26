import 'package:flutter/material.dart';
import 'package:cognifict/dashboard_screen.dart';
import 'package:cognifict/settings_screen.dart';
import 'theme/theme_data.dart';
import 'package:provider/provider.dart';
import './classes/speech_service.dart';
import 'package:cognifict/input_screen.dart';

void main() {
  runApp(const CognifictApp());
}

class CognifictApp extends StatelessWidget {
  const CognifictApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SpeechService()..initSpeech()),
      ],
      child: MaterialApp(
        title: 'Cognifict',
        theme: cognifictTheme,
        home: const DashboardScreen(),
        routes: {
          '/settings': (context) => const SettingsScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
