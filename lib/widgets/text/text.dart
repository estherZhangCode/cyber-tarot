import 'package:cyber_tarot/constant/tarot_theme.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final String? fontFamily;
  final int? maxLines;

  const TextWidget({
    super.key,
    required this.text,
    this.textStyle,
    this.textColor = TarotTheme.textPrimary,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.fontFamily,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final style = textStyle ??
        TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        );
    return Text(
      text,
      textAlign: textAlign,
      style: style.copyWith(
          color: textColor,
          fontFamily:
              fontFamily),
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
    );
  }
}

class Text44 extends TextWidget {
  const Text44(
      {required super.text,
      textColor = TarotTheme.textPrimary,
      textAlign = TextAlign.start,
      maxLines,
      super.key})
      : super(textColor: textColor, textAlign: textAlign);

  @override
  TextStyle? get textStyle =>
      const TextStyle(fontSize: 44, fontFamily: 'TTSerif');
}

class Text34 extends TextWidget {
  const Text34(
      {required super.text,
      textColor = TarotTheme.textPrimary,
      textAlign = TextAlign.start,
      maxLines,
      super.key})
      : super(textColor: textColor, textAlign: textAlign, maxLines: maxLines);

  @override
  TextStyle? get textStyle =>
      const TextStyle(fontSize: 34, fontFamily: 'TTSerif');
}

class Text22 extends TextWidget {
  const Text22(
      {required super.text,
      textColor = TarotTheme.textPrimary,
      textAlign = TextAlign.start,
      maxLines,
      super.key})
      : super(textColor: textColor, textAlign: textAlign, maxLines: maxLines);

  @override
  TextStyle? get textStyle =>
      const TextStyle(fontSize: 22, fontFamily: 'TTVar');
}

class Text20 extends TextWidget {
  const Text20(
      {required super.text,
      textColor = TarotTheme.textPrimary,
      textAlign = TextAlign.start,
      maxLines,
      super.key})
      : super(textColor: textColor, textAlign: textAlign, maxLines: maxLines);

  @override
  TextStyle? get textStyle =>
      const TextStyle(fontSize: 20, fontFamily: 'TTVar');
}
