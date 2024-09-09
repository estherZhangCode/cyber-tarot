import 'package:json_annotation/json_annotation.dart';

part 'tarot_card.g.dart';

@JsonSerializable()
class TarotCard {
  final String id;
  @JsonKey(name: "name_cn")
  final String nameCn;
  @JsonKey(name: "name_en")
  final String nameEn;
  final TarotMeanings meaning;
  final String pic;

  TarotCard(this.id, this.nameCn, this.nameEn, this.meaning, this.pic);

  factory TarotCard.fromJson(Map<String, dynamic> json) =>
      _$TarotCardFromJson(json);

  Map<String, dynamic> toJson() => _$TarotCardToJson(this);
}

@JsonSerializable()
class TarotMeanings {
  final String up;
  final String down;
  @JsonKey(name: "love_up")
  final String loveUp;
  @JsonKey(name: "love_down")
  final String loveDown;
  @JsonKey(name: "career_up")
  final String careerUp;
  @JsonKey(name: "career_down")
  final String careerDown;
  @JsonKey(name: "fortune_up")
  final String fortuneUp;
  @JsonKey(name: "fortune_down")
  final String fortuneDown;

  TarotMeanings(this.up, this.down, this.loveUp, this.loveDown,
      this.careerUp, this.careerDown, this.fortuneUp, this.fortuneDown);

  factory TarotMeanings.fromJson(Map<String, dynamic> json) =>
      _$TarotMeaningsFromJson(json);

  Map<String, dynamic> toJson() => _$TarotMeaningsToJson(this);
}


