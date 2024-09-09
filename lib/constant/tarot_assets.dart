class TarotAssets {
  static const String baseImagesPath = 'assets/images/';

  // general
  static const String starBg = 'bg.png';
  static const String arrowRightWhite = 'arrow_right_white.svg';

  // home
  static const String homePickCardBannerImage = 'home_pick_card_banner.png';
  static const String homeDiaryBannerImage = 'home_diary.png';
  static const String homeBottomViewBg = 'home_bottom_view_bg.png';
  static const String homeBottomStartButton = 'home_bottom_view_start_button.svg';

  // daily fortune

  // json
  static const String tarotCardsJsonData = 'assets/data/cards.json';

}

extension StringExt on String {
  String get fullImagePath {
    return '${TarotAssets.baseImagesPath}$this';
  }
}