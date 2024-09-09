
import 'dart:convert';

import 'package:cyber_tarot/constant/tarot_assets.dart';
import 'package:cyber_tarot/models/tarot_card.dart';
import 'package:flutter/services.dart';

class TarotManager {
  static final TarotManager _instance = TarotManager._();

  factory TarotManager() => _instance;

  TarotManager._();

  List _tarotCards = [];

  List get tarotCards => _tarotCards;

  void init() {
    // get tarot cards info
    rootBundle.loadString(TarotAssets.tarotCardsJsonData).then((data){
      final List<dynamic> tarotCardsJson = json.decode(data);
      _tarotCards = tarotCardsJson.map((e) => TarotCard.fromJson(e)).toList();
    });
  }
}
