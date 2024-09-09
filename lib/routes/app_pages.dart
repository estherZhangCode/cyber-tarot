import 'package:get/get.dart';

import '../mudules/daily_fortune/card_one_pick_binding.dart';
import '../mudules/daily_fortune/card_one_pick__page.dart';
import '../mudules/home/home_binding.dart';
import '../mudules/home/home_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final _releaseRoutes = [
    // Every page should be lazy loaded
    // GetPage(
    //     name: Routes.strollerEdit,
    //     page: () => const StrollerEditPage(),
    //     binding: StrollerEditBinding(),
    //     fullscreenDialog: true,
    //     opaque: false,
    //     transition: Transition.noTransition),

    // GetPage(
    //     name: Routes.login,
    //     page: () => const LoginPage(),
    //     binding: LoginBinding(),
    //     fullscreenDialog: true,
    //     transition: Transition.fade,
    //     opaque: false),

    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.cardOnePick,
        page: () => const CardOnePickPage(),
        binding: CardOnePickBinding()
    ),

  ];

  static getRoutes() {
    var routes = [..._releaseRoutes];
    return routes;
  }
}
