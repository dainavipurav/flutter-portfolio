import 'package:get/get.dart';

class HomeController extends GetxController {
  final String name = "Dainavi Purav";
  final String title = "Flutter Developer";
  final RxString currentSection = "Home".obs;

  void updateSection(String section) {
    currentSection.value = section;
  }
}
