import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skills = {
      'Languages': ['Dart', 'Java', 'Kotlin', 'JavaScript'],
      'Frameworks': ['Flutter', 'React Native'],
      'State Management': ['Provider', 'Riverpod', 'GetX', 'Bloc'],
      'Tools': ['Git', 'Postman', 'Figma', 'Firebase'],
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: skills.entries.map((entry) {
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: entry.value.map((skill) {
                        return Chip(
                          label: Text(skill),
                          backgroundColor: Colors.blue.shade100,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
