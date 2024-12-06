import 'package:get/get.dart';

class ProjectsController extends GetxController {
  final projects = [
    {
      'title': 'E-commerce App',
      'description':
          'A cross-platform e-commerce app with payment integration.',
      'technologies': ['Flutter', 'Firebase', 'Stripe'],
    },
    {
      'title': '3D Model Viewer',
      'description': 'An app to render and interact with 3D models in Flutter.',
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
  ].obs;
}
