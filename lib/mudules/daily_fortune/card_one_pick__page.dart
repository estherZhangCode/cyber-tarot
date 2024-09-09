import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/tarot_theme.dart';
import 'card_one_pick_controller.dart';

class CardOnePickPage extends GetView<CardOnePickController> {
  const CardOnePickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TarotTheme.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            actions: null),
        body: Container());
  }
}
