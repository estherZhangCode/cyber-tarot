import 'package:get/get.dart';

import '../../constant/analytics_keys.dart';
import '../../constant/tarot_keys.dart';
import '../../models/tarot_card/card_result_type.dart';
import '../../routes/app_pages.dart';
import '../../utils/analytic_util.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    _logView();

    super.onInit();
  }

  void jumpToCardOnePick() {
    AnalyticsUtil()
        .logClickEvent(AnalyticsEventKey.profileDailyCardClick, parameters: {});
    Get.toNamed(Routes.cardOnePick,
        arguments: {TarotKeys.argsKeyResultType: CardResultType.daily});
  }

  void jumpToDiary() {
    AnalyticsUtil()
        .logClickEvent(AnalyticsEventKey.profileDiaryClick, parameters: {});
    Get.toNamed(Routes.diary);
  }

  void jumpToDiaryList() {
    AnalyticsUtil().logClickEvent(
        AnalyticsEventKey.profileDiaryListSectionClick,
        parameters: {});
    Get.toNamed(Routes.diaryList);
  }

  void _logView() {
    AnalyticsUtil().logViewEvent(AnalyticsEventKey.profileView, parameters: {});
  }
}
