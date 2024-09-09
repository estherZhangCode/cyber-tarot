import 'package:cyber_tarot/mudules/home/wdigets/home_bottom_view.dart';
import 'package:cyber_tarot/mudules/home/wdigets/home_diary_view.dart';
import 'package:cyber_tarot/mudules/home/wdigets/home_pick_card_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/tarot_theme.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            actions: null),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                TarotTheme.black,
                TarotTheme.yellowLight,
              ],
                  stops: [
                0.4,
                1
              ])),
          child: const SingleChildScrollView(
              child: Column(children: [
            HomePickCardView(),
            HomeDiaryView(),
            HomeBottomView()
          ])),
        ));
  }
}
