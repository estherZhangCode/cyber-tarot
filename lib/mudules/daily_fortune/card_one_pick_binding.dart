import 'package:get/get.dart';
import 'card_one_pick_controller.dart';

class CardOnePickBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardOnePickController());
  }
}