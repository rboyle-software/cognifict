import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class OpenAIApiProvider with ChangeNotifier {
  String _responseText = ""; // Store the API response
  bool _isLoading = false;

  // Getter for the API response
  String get responseText => _responseText;

  // Getter for loading state
  bool get isLoading => _isLoading;


  // Function to send the query to the ChatGPT API (or another API)
  Future<void> sendQueryToApi(String query) async {
    _isLoading = true;
    notifyListeners();

    const apiUrl = "https://api.openai.com/v1/chat/completions";
    var apiKey = dotenv.env['OPENAI_API_KEY'];

    // Create Dio HTTP client
    final dio = Dio();
    dio.options.headers = {
      "Authorization": "Bearer $apiKey",
      "Content-Type": "application/json",
    };

    try {
      // Send a POST request to the API
      final response = await dio.post(apiUrl, data: {
        "model": "gpt-4o", // Specify the model, e.g., gpt-3.5-turbo or gpt-4
        "messages": [
          {"role": "system", "content": "You are a wise and experienced friend with deep knowledge of human behavior. Your tone is subtly formal. Your advice and suggestions are presented tactfully and with love for the user."},
          {"role": "user", "content": '$query \n Please let me know if I am exhibiting cognitive bias and if so, which type(s) of cognitive bias'},
        ],
      });

      // Extract response content
      _responseText = response.data['choices'][0]['message']['content'];
    } catch (e) {
      _responseText = "Error: Failed to connect to the API.";
      throw Exception("Failed to connect to the API: $e");
    } finally {
      _isLoading = false;
      print('RESPONSE TEXT: ' + _responseText);
      notifyListeners(); // Notify listeners after the API call completes
    }
  }
}
