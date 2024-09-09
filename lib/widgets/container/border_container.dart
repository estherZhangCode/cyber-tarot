import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BorderContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;

  const BorderContainer(
      {super.key,
      this.padding = const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Container(
      //     padding: padding,
      //     decoration: BoxDecoration(
      //       color: Colors.transparent,
      //       borderRadius: BorderRadius.circular(32.w),
      //       border: Border.all(
      //         color: Colors.white.withOpacity(0.5),
      //         width: 2.w,
      //       ),
      //     ),
      //     child: Opacity(opacity: 0, child: child)),
      Container(
              padding: padding,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30.w),
                border: Border.all(
                  color: Colors.white,
                  width: 1.w,
                ),
              ),
              child: child)
          // .marginOnly(left: 0.5.w, right: 2.w, top: 0.5.h, bottom: 2.h),
    ]);
  }
}
