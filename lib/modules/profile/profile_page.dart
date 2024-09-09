import 'package:cyber_tarot/modules/profile/profile_controller.dart';
import 'package:cyber_tarot/modules/profile/widgets/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/tarot_theme.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TarotTheme.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            leading: const BackButton(color: TarotTheme.white,),
            actions: null),
        body: const ProfileView());
  }
}
