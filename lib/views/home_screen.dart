import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/contact_screen.dart';
import 'package:myapp/views/experience_screen.dart';
import 'package:myapp/views/projects_screen.dart';
import 'package:myapp/views/skills_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dainavi Purav Portfolio'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            const Text(
              'Hi, I am Dainavi Purav!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Experienced Flutter Developer',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const AboutScreen()),
              child: const Text('About Me'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const ProjectsScreen()),
              child: const Text('Projects'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const ContactScreen()),
              child: const Text('Contact Me'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const ExperienceScreen()),
              child: const Text('Experience'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const SkillsScreen()),
              child: const Text('Skills'),
            ),
          ],
        ),
      ),
    );
  }
}
