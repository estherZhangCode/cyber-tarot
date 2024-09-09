import 'package:cyber_tarot/extension/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/tarot_assets.dart';
import '../../../constant/tarot_theme.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/text/text.dart';
import '../home_controller.dart';

class HomeDiaryView extends GetView<HomeController> {
  const HomeDiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 200.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          TarotAssets.homeDiaryBannerImage.fullImagePath,
          width: 200.w,
          fit: BoxFit.fitWidth,
        ),
        _buildActionView(context).onTap(controller.jumpToDiaryPage)
      ]),
    );
  }

  Widget _buildActionView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: TarotTheme.spacing32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text22(
              text: S.of(context).home_diary_section_title,
              textColor: TarotTheme.white),
          SizedBox(height: TarotTheme.spacing4.h),
          SvgPicture.asset(
            TarotAssets.arrowRightWhite.fullImagePath,
            fit: BoxFit.cover,
            height: 20.w,
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
