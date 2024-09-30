import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'theme/theme_data.dart';
import 'input_screen.dart';
import 'dashboard_screen.dart';
import 'settings_screen.dart';
import 'classes/speech_service.dart';
import 'classes/open_ai_api_provider.dart';

// DotEnv dotenv = DotEnv() is automatically called during import.
// If you want to load multiple dotenv files or name your dotenv object differently, you can do the following and import the singleton into the relavant files:
// DotEnv another_dotenv = DotEnv()

Future main() async {
  // To load the .env file contents into dotenv.
  // NOTE: fileName defaults to .env and can be omitted in this case.
  // Ensure that the filename corresponds to the path in step 1 and 2.
  await dotenv.load(fileName: ".env");
  //...runapp
  runApp(const CognifictApp());

}

class CognifictApp extends StatelessWidget {
  const CognifictApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SpeechService()..initSpeech()),
        ChangeNotifierProvider(create: (_) => OpenAIApiProvider()),
      ],
      child: MaterialApp(
        title: 'Cognifict',
        theme: cognifictTheme,
        home: const InputScreen(),
        routes: {
          '/input': (context) => const InputScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/dashboard': (context) => const DashboardScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
