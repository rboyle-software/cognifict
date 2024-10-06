import 'package:cognifict/classes/open_ai_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'classes/speech_service.dart';
import 'theme/theme_data.dart';
import 'widgets/dynamic_salutations.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String _localResponseText = "";

  @override
  Widget build(BuildContext context) {
    final speechService = Provider.of<SpeechService>(context);
    final apiProvider = Provider.of<OpenAIApiProvider>(context);

    startListening() {
      _localResponseText = '';
      speechService.startListening();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask Cognifict',
          style: TextStyle(color: CognifictColors.lighterBlue),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [CognifictColors.lighterBlue, CognifictColors.luminousBlue],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Display a random greeting
                const DynamicSalutation(),

                // Display the recognized text OR the local response text
                Card(
                  elevation: 5,
                  clipBehavior: Clip.hardEdge,
                  color: CognifictColors.mediumBlue,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 250, minHeight: 100),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: apiProvider.isLoading
                          ? const Center(child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(CognifictColors.lighterBlue),
                          ))
                          : SingleChildScrollView(
                              child: _localResponseText.isEmpty
                                  ? Text(
                                      speechService.recognizedText.isEmpty ? 'Tap the mic and start speaking...' : speechService.recognizedText,
                                      style: const TextStyle(fontSize: 24.0),
                                    )
                                  : Text(
                                      _localResponseText,
                                      style: const TextStyle(fontSize: 24.0, color: CognifictColors.lighterBlue),
                                    ),
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                // Display the microphone image button
                Stack(
                  children: [
                    Card(
                      elevation: 5,
                      clipBehavior: Clip.hardEdge,
                      child: SizedBox(
                        width: 350,
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: Ink.image(
                              image: const AssetImage('assets/images/microphone.jpg'),
                              fit: BoxFit.contain,
                              width: 350,
                              height: 200,
                              child: InkWell(
                                onTap: speechService.isListening ? speechService.stopListening : () => startListening(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // a Container that is a small circle with a color that changes based on the listening state
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: speechService.isListening ? Colors.red : CognifictColors.mediumGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),

                // Display the Ask Cognifict button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: CognifictColors.lighterBlue),
                  onPressed: () async {
                    await apiProvider.sendQueryToApi(speechService.recognizedText);
                    _localResponseText = apiProvider.responseText;
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Ask Cognifict',
                      style: TextStyle(
                        fontSize: 20,
                        color: CognifictColors.goldenYellow,
                      ),
                    ),
                  ),
                ),

                // Add extra margin at the bottom
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
