import 'package:flutter/material.dart';
import 'theme/theme_data.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CognifictColors.skyBlue,
      appBar: AppBar(
        title: const Text('Cognifict Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          )
        ],
      ),
      body: Column(
        children: [
          _buildBiasReportCard(),
          _buildInsightsCard(),
          _buildEducationCard(),
        ],
      ),
    );
  }

  Widget _buildBiasReportCard() {
    return const Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text("Cognitive Biases Detected"),
        subtitle: Text("You have exhibited confirmation bias 3 times today."),
        trailing: Icon(Icons.warning, color: Colors.orange),
      ),
    );
  }

  Widget _buildInsightsCard() {
    return const Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text("Insights"),
        subtitle: Text("Your decision-making is improving by avoiding biases."),
        trailing: Icon(Icons.insights, color: Colors.blue),
      ),
    );
  }

  Widget _buildEducationCard() {
    return const Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text("Learn about Cognitive Biases"),
        subtitle: Text("Explore strategies to mitigate common biases."),
        trailing: Icon(Icons.school, color: Colors.green),
      ),
    );
  }
}
