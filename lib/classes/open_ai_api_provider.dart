import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class OpenAIApiProvider with ChangeNotifier {
  String _responseText = ""; // Store the API response
  bool _isLoading = false;

  // Getter for the API response
  String get responseText => _responseText;

  // Getter for loading state
  bool get isLoading => _isLoading;

  // Function to send the query to the Firebase Cloud Function
  Future<void> sendQueryToApi(String query) async {
    _isLoading = true;
    notifyListeners();

    // Replace with your Firebase Cloud Function URL
    // const cloudFunctionUrl = "https://us-central1-cognifict.cloudfunctions.net/chatGptQuery";
    const cloudFunctionUrl = "https://chatgptquery-ob3hxmvg4q-uc.a.run.app";

    // Create Dio HTTP client
    final dio = Dio();
    dio.options.headers = {
      "Content-Type": "application/json",
    };

    try {
      // Send a POST request to the Cloud Function
      final response = await dio.post(cloudFunctionUrl, data: {
        "query": query,
      });

      // Extract response content from the Cloud Function response
      _responseText = response.data['response'];
    } catch (e) {
      _responseText = "Error: Failed to connect to the API.";
      throw Exception("Failed to connect to the API: $e");
    } finally {
      print(_responseText);
      _isLoading = false;
      notifyListeners(); // Notify listeners after the API call completes
    }
  }
}
