import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'E-commerce App',
        'description':
            'A cross-platform e-commerce app with payment integration.',
        'technologies': ['Flutter', 'Firebase', 'Stripe'],
      },
      {
        'title': '3D Model Viewer',
        'description':
            'An app to render and interact with 3D models in Flutter.',
        'technologies': ['Flutter', 'Three.js', 'WebView'],
      },
      {
        'title': 'Chat Application',
        'description': 'A real-time messaging app with push notifications.',
        'technologies': ['Flutter', 'Firebase', 'Cloud Messaging'],
      },
      {
        'title': 'Portfolio Website',
        'description': 'A personal portfolio website built using Flutter Web.',
        'technologies': ['Flutter', 'Dart'],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project['title']!.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      project['description']!.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      children: (project['technologies']! as List<String>)
                          .map((tech) {
                        return Chip(
                          label: Text(tech),
                          backgroundColor: Colors.blue.shade100,
                        );
                      }).toList(),
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
