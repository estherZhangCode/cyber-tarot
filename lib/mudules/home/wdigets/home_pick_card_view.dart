import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/tarot_assets.dart';
import '../../../constant/tarot_theme.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/container/border_container.dart';
import '../../../widgets/text/text.dart';
import '../home_controller.dart';

class HomePickCardView extends GetView<HomeController> {
  const HomePickCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Image.asset(
            TarotAssets.starBg.fullImagePath,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Column(children: [
            SizedBox(height: 140.h),
            Container(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(context),
                SizedBox(height: TarotTheme.spacing48.h),
                _buildPickCard(context)
              ],
            ).paddingSymmetric(horizontal: TarotTheme.spacing24.w))
                .paddingOnly(bottom: TarotTheme.spacing64.h)
          ])
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text44(
        text: S.of(context).home_pick_card_section_title,
        textColor: TarotTheme.white);
  }

  Widget _buildPickCard(BuildContext context) {
    return BorderContainer(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                TarotAssets.homePickCardBannerImage.fullImagePath,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: TarotTheme.spacing32.h),
              Text34(
                  text: S.of(context).home_pick_card_view_title,
                  textColor: TarotTheme.white),
              SizedBox(height: TarotTheme.spacing2.h),
              Text22(
                  text: S.of(context).home_pick_card_view_subtitle,
                  textColor: TarotTheme.textGrey),
            ],
          ),
          Positioned(
            right: 0,
            bottom: TarotTheme.spacing16,
            child: SvgPicture.asset(
              TarotAssets.arrowRightWhite.fullImagePath,
              fit: BoxFit.cover,
              height: 40.w,
              width: 40.w,
            ),
          ),
        ],
      ),
    );
  }
}
