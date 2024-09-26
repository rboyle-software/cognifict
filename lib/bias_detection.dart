import 'package:flutter/material.dart';

class BiasDetection extends StatefulWidget {
  const BiasDetection({super.key});

  @override
  _BiasDetectionState createState() => _BiasDetectionState();
}

class _BiasDetectionState extends State<BiasDetection> {
  String _biasMessage = "Detecting biases...";

  // This method simulates a bias detection API
  void _simulateBiasDetection() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _biasMessage = "Confirmation bias detected in your email!";
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _simulateBiasDetection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bias Detection")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.warning, size: 100, color: Colors.orange),
            const SizedBox(height: 20),
            Text(_biasMessage, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
