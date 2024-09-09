part of 'app_pages.dart';

class Routes {
  static const home = '/home';
  static const cardOnePick = '/card_one_pick';

  static String formatPath(String str) => str.startsWith('/') ? str : ('/$str');


  static bool matches(String str) {
    final path = formatPath(str);

    return path == home ||
        path == cardOnePick;
  }
}
