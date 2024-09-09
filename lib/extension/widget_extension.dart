import 'package:flutter/material.dart';

extension TarotWidgetExtension on Widget {
  Widget onTap(Function() onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: this,
    );
  }
}
