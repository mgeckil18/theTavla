import 'package:get/get.dart';
import 'package:thetavla/screens/settings_screen.dart';

class InitialScreenController extends GetxController {
  void navigateToSettings() {
    Get.to(SettingsScreen());
  }
}
