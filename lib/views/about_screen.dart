import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Experienced Flutter Developer with over 4 years of expertise in building high-performance, cross-platform mobile applications. Proficient in responsive UI/UX design, efficient state management, and creating scalable and maintainable codebases.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Contact',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () =>
                  launchUrl(Uri.parse('mailto:dainavipurav@gmail.com')),
              child: const Text('Email: dainavipurav@gmail.com'),
            ),
            GestureDetector(
              onTap: () =>
                  launchUrl(Uri.parse('https://github.com/dainavipurav')),
              child: const Text('GitHub: github.com/dainavipurav'),
            ),
            GestureDetector(
              onTap: () => launchUrl(
                  Uri.parse('https://linkedin.com/in/dainavi-purav-5b3a7b114')),
              child: const Text('LinkedIn: linkedin.com/in/dainavi-purav'),
            ),
          ],
        ),
      ),
    );
  }
}
