import 'dart:math';
import 'package:cognifict/theme/theme_data.dart';
import 'package:flutter/material.dart';

class DynamicSalutation extends StatefulWidget {
  const DynamicSalutation({super.key});

  @override
  DynamicSalutationState createState() => DynamicSalutationState();
}

class DynamicSalutationState extends State<DynamicSalutation> {
  final Random _random = Random();
  String _currentGreeting = '';

  // Greetings categorized by time of day
  final Map<String, List<String>> greetingsByTimeOfDay = {
    'earlyMorning': [
      "Good morning, <User>! What thoughts are blooming like the morning dew in your mind today?",
      "Hello, <User>, rising with the dawn. Are your thoughts as clear as the morning sky?",
      "Good daybreak, <User>. What ideas are sprouting with the sunrise?",
      "Morning light to you, <User>. Are your thoughts floating gently like the early morning mist?",
      "Awaken with grace, <User>. What thoughts are stretching out with the first rays of the sun?",
      "Good morning, <User>. What's on your mind as the sun tiptoes across the horizon?",
      "Rise and shine, <User>. Are your ideas taking flight with the birds?",
      "Morning, <User>. Is your mind warming up like the sun peeking through the clouds?",
      "A bright morning to you, <User>. What's on your mind as the world yawns awake?",
      "Good morning, <User>. Are your thoughts as fresh as the breeze that greets the dawn?",
    ],
    'lateMorning': [
      "Hello, <User>. As the morning matures, what ideas are shaping up like the clouds in the sky?",
      "Good late morning, <User>. What's growing in the garden of your thoughts today?",
      "Hey there, <User>. As the sun climbs higher, are your ideas blossoming too?",
      "Good late morning, <User>. What thoughts are swirling in the late-morning breeze?",
      "Morning, <User>. Has your mind cleared like the skies after a gentle rain?",
      "Hello, <User>. As the day unfolds, what thoughts are you unwrapping?",
      "A warm late morning to you, <User>. What are you pondering as the sun dances in the sky?",
      "Good day, <User>. What are you mulling over as the clouds drift lazily overhead?",
      "Late morning greetings, <User>. Is your mind wandering like a leaf caught in the breeze?",
      "Good morning, <User>. What's sprouting in the soil of your thoughts this late morning?",
    ],
    'midday': [
      "Good midday, <User>. What's on your mind as the sun reaches its peak?",
      "Hello, <User>. As the day hits its stride, where are your thoughts wandering?",
      "Midday greetings, <User>. What's on your mind as the sunlight floods the sky?",
      "Hi there, <User>. What's bubbling to the surface like a midday breeze across the fields?",
      "Good noon, <User>. What ideas are simmering in the warmth of the sun?",
      "Midday light to you, <User>. Is your mind as clear as the sky above?",
      "Hello, <User>. What thoughts are blossoming as the day hits its peak?",
      "Good midday, <User>. Are your thoughts rolling in like the afternoon clouds?",
      "Greetings, <User>. What are you reflecting on as the sun stands still in the sky?",
      "Midday greetings, <User>. What thoughts are blooming in the bright light of the day?",
    ],
    'afternoon': [
      "Good afternoon, <User>. What's floating through your mind as the afternoon unfolds?",
      "Hello, <User>. As the day drifts into afternoon, where are your thoughts headed?",
      "Good afternoon, <User>. Are your thoughts soaring as high as the afternoon breeze?",
      "Afternoon greetings, <User>. What ideas are taking root under the afternoon sun?",
      "Good day, <User>. What are you pondering as the sun makes its journey across the sky?",
      "Hello, <User>. What's dancing in your mind like the shadows cast by the afternoon light?",
      "Afternoon, <User>. What are you thinking about as the sun begins its descent?",
      "Good day, <User>. What thoughts are warming up like the afternoon sun?",
      "Hello, <User>. As the day carries on, what thoughts are floating through your mind?",
      "Afternoon greetings, <User>. Are your ideas spreading out like the clouds in the sky?",
      "Good late afternoon, <User>. What's brewing in your mind as the shadows lengthen?",
      "Hello, <User>. As the sun begins its descent, what ideas are shimmering in your thoughts?",
      "Good afternoon, <User>. What's on your mind as the day winds down?",
      "Greetings, <User>. What thoughts are flowing like the golden hour light?",
      "Good late afternoon, <User>. What are you contemplating as the sky turns amber?",
      "Hello, <User>. What are you mulling over as the day's heat begins to soften?",
      "Late afternoon greetings, <User>. What's dancing through your mind as the sun begins to set?",
      "Good afternoon, <User>. Are your ideas blooming like wildflowers under the afternoon sun?",
      "Greetings, <User>. What thoughts are unfurling in the cooling afternoon air?",
      "Good late afternoon, <User>. What's on your mind as the sky changes its colors?",
    ],
    'evening': [
      "Good evening, <User>. What thoughts are you letting settle like the evening dew?",
      "Hello, <User>. As the sun sets, what ideas are shimmering in your thoughts?",
      "Good evening, <User>. What's on your mind as the stars begin to peek out?",
      "Greetings, <User>. What thoughts are stirring as the day gives way to night?",
      "Evening light to you, <User>. What ideas are dancing on the horizon?",
      "Hello, <User>. What are you pondering as the sky turns from blue to gold?",
      "Good evening, <User>. What's on your mind as the day draws to a close?",
      "Evening greetings, <User>. What thoughts are shimmering like the first stars of the night?",
      "Hello, <User>. What's on your mind as the world begins to slow down?",
      "Good evening, <User>. Are your thoughts as calm as the setting sun?",
    ],
    'night': [
      "Good night, <User>. What thoughts are twinkling like the stars in your mind?",
      "Hello, <User>. What's on your mind as the world falls quiet under the night sky?",
      "Good night, <User>. What thoughts are floating through the midnight air?",
      "Greetings, <User>. What ideas are glowing softly like the moonlight?",
      "Good night, <User>. What are you reflecting on as the stars blanket the sky?",
      "Hello, <User>. What thoughts are wandering through your mind as the night settles in?",
      "Nighttime greetings, <User>. What are you pondering as the world slips into darkness?",
      "Good night, <User>. What ideas are drifting in the calm of the night?",
      "Hello, <User>. What thoughts are twinkling in your mind like distant constellations?",
      "Good night, <User>. What's stirring in the quiet night air?",
    ],
    'lateNight': [
      "Late night greetings, <User>. What thoughts are whispering in the moonlight?",
      "Hello, <User>. What's keeping your mind awake under the midnight sky?",
      "Good late night, <User>. What's on your mind as the stars keep watch?",
      "Greetings, <User>. What are you mulling over as the world falls into deep slumber?",
      "Hello, <User>. What's dancing in your thoughts under the stillness of the late night?",
      "Late night light to you, <User>. What thoughts are swirling under the starry blanket?",
      "Good late night, <User>. What ideas are floating in the quiet of the night?",
      "Hello, <User>. What's on your mind as the moon stands guard over the sleeping world?",
      "Good late night, <User>. What thoughts are shimmering like the last glow of the day?",
      "Greetings, <User>. What ideas are floating through the cool night air?",
    ],
    'bonusGreetings': [
      "Hello, <User>. What are you thinking about as the world outside changes with the breeze?",
      "Greetings, <User>. What's on your mind as the sun hides and the moon takes center stage?",
      "Greetings, <User>. What's on your mind as the sun hides and the moon takes center stage?",
      "Hi there, <User>. What thoughts are flowing through your mind like the gentle tide?",
      "Hello, <User>. What ideas are blooming like the flowers in the meadow?",
      "Good day, <User>. What's on your mind as the clouds roll through the sky?",
      "Greetings, <User>. What are you contemplating as the rain gently taps the window?",
      "Hello, <User>. What are you thinking about as the sky paints itself in colors?",
      "Good day, <User>. What's floating through your mind as the breeze whispers past?",
      "Hello, <User>. What's on your mind as the sun dips beneath the horizon?",
      "Greetings, <User>. What thoughts are flowing like a river through your mind?",
    ],
    'anytimeGreetings': [
      "Morning or evening, <User>, what's spinning in your thoughts today?",
      "No matter the hour, <User>, what thoughts are lifting like a kite in the breeze?",
      "No matter the hour, <User>, what thoughts are lifting like a kite in the breeze?",
      "Whatever the time, <User>, what's bubbling in your mind like a calm, flowing stream?",
      "Hello, <User>. Whether dawn or dusk, what's growing in the garden of your thoughts?",
      "Good day or night, <User>. What's taking root in your mind like a seed in the soil?",
      "Hi, <User>. Whether day or night, what ideas are soaring through your thoughts?",
      "Any time is a good time to ask, <User>. What's on your mind as the winds shift?",
      "Whether under the sun or stars, <User>, what's lighting up your thoughts?",
      "Whatever the hour, <User>, what's unfolding in your thoughts like a new chapter?",
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

    if (now.hour > 4 && now.hour <= 7) {
      timeOfDay = 'earlyMorning';
    } else if (now.hour > 8 && now.hour <= 11) {
      timeOfDay = 'lateMorning';
    } else if (now.hour > 12 && now.hour <= 14) {
      timeOfDay = 'midday';
    } else if (now.hour > 15 && now.hour <= 17) {
      timeOfDay = 'afternoon';
    } else if (now.hour > 18 && now.hour <= 20) {
      timeOfDay = 'evening';
    } else if (now.hour > 21 && now.hour <= 24) {
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


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _currentGreeting.replaceAll('<User>', 'User'), // Replace <User> with a placeholder name
            style: const TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: CognifictColors.goldenYellow,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
