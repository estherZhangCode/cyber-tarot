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

class HomeBottomView extends GetView<HomeController> {
  const HomeBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          TarotAssets.homeBottomViewBg.fullImagePath,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Positioned(
          bottom: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildTitle(context),
                SizedBox(height: TarotTheme.spacing2.h),
                _buildSubTitle(context),
                SizedBox(height: TarotTheme.spacing32.h),
                _buildActionButton()
              ]),
        )
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text22(
      text: S.of(context).home_bottom_view_section_title,
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    return Text44(
      text: S.of(context).home_bottom_view_section_subtitle,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildActionButton() {
    return SvgPicture.asset(
      TarotAssets.homeBottomStartButton.fullImagePath,
      height: 120.h,
      width: 375.w,
    ).onTap(controller.jumpToCardAdvicePage);
  }
}
