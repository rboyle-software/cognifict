import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter/material.dart';

class SpeechService with ChangeNotifier {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _recognizedText = '';

  SpeechService() {
    _speech = stt.SpeechToText();
  }

  // Initialize speech recognition
  Future<void> initSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (val) => print('Status: $val'),
      onError: (val) => print('Error: $val'),
    );
    if (available) {
      notifyListeners();
    }
  }

  // Start listening to speech
  Future<void> startListening() async {
    _isListening = true;
    await _speech.listen(onResult: _onSpeechResult);
    notifyListeners();
  }

  // Stop listening to speech
  void stopListening() {
    _speech.stop();
    _isListening = false;
    notifyListeners();
    print(recognizedText);
  }

  // Callback function to process the recognized speech
  void _onSpeechResult(result) {
    _recognizedText = result.recognizedWords;
    notifyListeners();
  }

  // Get recognized text
  String get recognizedText => _recognizedText;

  // Check if listening
  bool get isListening => _isListening;
}
