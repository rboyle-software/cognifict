import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './classes/speech_service.dart';
import 'package:cognifict/widgets/dynamic_salutations.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final speechService = Provider.of<SpeechService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Speech-to-Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Display a random greeting
            const DynamicSalutation(),
            // Display recognized text
            Expanded(
              child: Text(
                speechService.recognizedText.isEmpty ? 'Press the button and start speaking...' : speechService.recognizedText,
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
            // Display start/stop button
            FloatingActionButton(
              onPressed: speechService.isListening ? speechService.stopListening : speechService.startListening,
              tooltip: 'Listen',
              child: Icon(speechService.isListening ? Icons.mic_off : Icons.mic),
            ),
          ],
        ),
      ),
    );
  }
}
