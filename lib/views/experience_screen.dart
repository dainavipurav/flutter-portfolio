import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final experiences = [
      {
        'title': 'Flutter Developer',
        'company': 'XYZ Tech Solutions',
        'duration': 'Jan 2020 - Present',
        'description': 'Developed cross-platform apps using Flutter and Dart.',
      },
      {
        'title': 'Software Engineer',
        'company': 'ABC Innovations',
        'duration': 'Jun 2018 - Dec 2019',
        'description':
            'Worked on Android and iOS app development and handled API integrations.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            final experience = experiences[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      experience['company']!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      experience['duration']!,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      experience['description']!,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
