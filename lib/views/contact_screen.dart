import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get in Touch',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: const Text('dainavipurav@gmail.com'),
              onTap: () =>
                  launchUrl(Uri.parse('mailto:dainavipurav@gmail.com')),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone'),
              subtitle: const Text('+91-9619380028'),
              onTap: () => launchUrl(Uri.parse('tel:+919619380028')),
            ),
            ListTile(
              leading: const Icon(Icons.web),
              title: const Text('GitHub'),
              subtitle: const Text('github.com/dainavipurav'),
              onTap: () =>
                  launchUrl(Uri.parse('https://github.com/dainavipurav')),
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('LinkedIn'),
              subtitle: const Text('linkedin.com/in/dainavi-purav-5b3a7b114'),
              onTap: () => launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/dainavi-purav-5b3a7b114')),
            ),
          ],
        ),
      ),
    );
  }
}
