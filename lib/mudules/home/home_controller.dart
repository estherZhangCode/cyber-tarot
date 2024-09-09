import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class HomeController extends GetxController {

  void jumpToDailyFortunePage() {
    Get.toNamed(Routes.cardOnePick);
  }

  void jumpToDiaryPage() {
    // Get.toNamed(Routes.diaryPage);
  }

  void jumpToCardAdvicePage() {
    // Get.toNamed(Routes.diaryPage);
  }
}
