import 'package:cyber_tarot/extension/widget_extension.dart';
import 'package:cyber_tarot/widgets/container/bg_container.dart';
import 'package:cyber_tarot/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/tarot_assets.dart';
import '../../../constant/tarot_theme.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/container/border_container.dart';
import '../../../widgets/image/radius_image.dart';
import '../profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: BgContainer(
        TarotAssets.darkBg.fullImagePath,
        child: _buildContentView(context),
      ),
    );
  }

  Widget _buildContentView(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(
        left: TarotTheme.containerPaddingHorizontalSpacing.w,
        right: TarotTheme.containerPaddingHorizontalSpacing.w,
        top: 120.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildTitle(context),
          _buildDiarySection(context)
              .marginOnly(
                  top: TarotTheme.spacing48.h, bottom: TarotTheme.spacing32.h)
              .onTap(controller.jumpToDiary),
          _buildOnePickSection(context)
              .marginOnly(bottom: TarotTheme.spacing32.h)
              .onTap(controller.jumpToCardOnePick),
          _buildHistorySection(context)
              .marginOnly(bottom: TarotTheme.spacing48.h)
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text44(
      text: S.of(context).profile_title,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDiarySection(BuildContext context) {
    return BorderContainer(
      padding: EdgeInsets.symmetric(
          horizontal: TarotTheme.containerPaddingHorizontalSpacing.w,
          vertical: TarotTheme.spacing24.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 270.w,
                  child:
                      Text34(text: S.of(context).profile_diary_section_title)),
              SizedBox(height: TarotTheme.spacing8.h),
              Text22(
                  text: S.of(context).profile_diary_section_subtitle,
                  textColor: TarotTheme.textGrey),
              SizedBox(height: TarotTheme.spacing8.h),
            ],
          ),
          Positioned(
            right: 0,
            bottom: TarotTheme.spacing16,
            child: SvgPicture.asset(
              TarotAssets.arrowRightWhite.fullImagePath,
              fit: BoxFit.cover,
              width: TarotTheme.spacing32.w,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnePickSection(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          TarotAssets.profileOnePickBanner.fullImagePath,
          width: double.infinity,
          height: 100.h,
          fit: BoxFit.fill,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text22(
              text: S.of(context).profile_one_pick_section_title,
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset(
              TarotAssets.arrowRightWhite.fullImagePath,
              fit: BoxFit.cover,
              // height: 40.h,
              width: TarotTheme.spacing24.w,
            ),
          ],
        ).paddingSymmetric(
            horizontal: TarotTheme.spacing12.w,
            vertical: TarotTheme.spacing12.w)
      ],
    );
  }

  Widget _buildHistorySection(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        RadiusImage(
          image: TarotAssets.profileHistoryBanner.fullImagePath,
          width: double.infinity,
          height: 100.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text22(
              text: S.of(context).profile_history_section_title,
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset(
              TarotAssets.arrowRightWhite.fullImagePath,
              fit: BoxFit.cover,
              // height: 40.h,
              width: TarotTheme.spacing24.w,
            ),
          ],
        ).paddingSymmetric(
            horizontal: TarotTheme.spacing12.w,
            vertical: TarotTheme.spacing12.w)
      ],
    ).onTap(controller.jumpToDiaryList);
  }
}
