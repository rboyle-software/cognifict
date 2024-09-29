import 'dart:math';
import 'package:flutter/material.dart';

class DynamicSalutation extends StatefulWidget {
  const DynamicSalutation({super.key});

  @override
  _DynamicSalutationState createState() => _DynamicSalutationState();
}

class _DynamicSalutationState extends State<DynamicSalutation> {
  final Random _random = Random();
  String _currentGreeting = '';

  // Greetings categorized by time of day
  final Map<String, List<String>> greetingsByTimeOfDay = {
    'earlyMorning': [
      "Good morning, <User>! What thoughts are blooming like the morning dew in your mind today?",
      "Hello, <User>, rising with the dawn. Are your thoughts as clear as the morning sky?",
      // Add more early morning greetings...
    ],
    'lateMorning': [
      "Hello, <User>. As the morning matures, what ideas are shaping up like the clouds in the sky?",
      "Good late morning, <User>. What's growing in the garden of your thoughts today?",
      // Add more late morning greetings...
    ],
    'midday': [
      "Good midday, <User>. What's on your mind as the sun reaches its peak?",
      "Hello, <User>. As the day hits its stride, where are your thoughts wandering?",
      // Add more midday greetings...
    ],
    'afternoon': [
      "Good afternoon, <User>. What's floating through your mind as the afternoon unfolds?",
      "Hello, <User>. As the day drifts into afternoon, where are your thoughts headed?",
      // Add more afternoon greetings...
    ],
    'evening': [
      "Good evening, <User>. What thoughts are you letting settle like the evening dew?",
      "Hello, <User>. As the sun sets, what ideas are shimmering in your thoughts?",
      // Add more evening greetings...
    ],
    'night': [
      "Good night, <User>. What thoughts are twinkling like the stars in your mind?",
      "Hello, <User>. What's on your mind as the world falls quiet under the night sky?",
      // Add more night greetings...
    ],
    'lateNight': [
      "Late night greetings, <User>. What thoughts are whispering in the moonlight?",
      "Hello, <User>. What's keeping your mind awake under the midnight sky?",
      // Add more late-night greetings...
    ],
    'bonusGreetings': [
      "Hello, <User>. What are you thinking about as the world outside changes with the breeze?",
      "Greetings, <User>. What's on your mind as the sun hides and the moon takes center stage?",
      // Add more bonus greetings...
    ],
    'anytimeGreetings': [
      "Morning or evening, <User>, what's spinning in your thoughts today?",
      "No matter the hour, <User>, what thoughts are lifting like a kite in the breeze?",
      // Add more anytime greetings...
    ]
  };

  @override
  void initState() {
    super.initState();
    _selectRandomGreeting();
  }

  // Determine the time of day and select a random greeting accordingly
  void _selectRandomGreeting() {
    final now = DateTime.now();
    String timeOfDay;

    if (now.hour >= 5 && now.hour < 9) {
      timeOfDay = 'earlyMorning';
    } else if (now.hour >= 9 && now.hour < 12) {
      timeOfDay = 'lateMorning';
    } else if (now.hour >= 12 && now.hour < 15) {
      timeOfDay = 'midday';
    } else if (now.hour >= 15 && now.hour < 18) {
      timeOfDay = 'afternoon';
    } else if (now.hour >= 18 && now.hour < 21) {
      timeOfDay = 'evening';
    } else if (now.hour >= 21 && now.hour < 24) {
      timeOfDay = 'night';
    } else {
      timeOfDay = 'lateNight';
    }

    List<String> selectedCategory = _randomlySelectCategory(timeOfDay);
    _currentGreeting = selectedCategory[_random.nextInt(selectedCategory.length)];
  }

  // Randomly select between time of day, bonus, or general anytime greetings
  List<String> _randomlySelectCategory(String timeOfDay) {
    int categoryChoice = _random.nextInt(3);
    switch (categoryChoice) {
      case 0:
        return greetingsByTimeOfDay[timeOfDay]!;
      case 1:
        return greetingsByTimeOfDay['bonusGreetings']!;
      case 2:
      default:
        return greetingsByTimeOfDay['anytimeGreetings']!;
    }
  }

  // Function to display a new random greeting
  void _refreshGreeting() {
    setState(() {
      _selectRandomGreeting();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _currentGreeting.replaceAll('<User>', 'Brad'), // Replace <User> with a placeholder name
            style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          // const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _refreshGreeting,
            child: const Text('Refresh Greeting'),
          ),
        ],
      ),
    );
  }
}
