import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:thetavla/controllers/inital_screen_controller.dart';

class InitialScreenAppBar extends StatelessWidget {
  const InitialScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    InitialScreenController controller = Get.put(InitialScreenController());
    return Container(
      height: 200.h,
      width: 375.w,
      child: Row(
        children: [
          Container(
            width: 375.w,
            height: 200.h,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 7,
                itemBuilder: ((context, index) {
                  return InitialScreenAppBarItem(
                      index: index, text: "anan" + index.toString());
                })),
          )
        ],
      ),
    );
  }
}

class InitialScreenAppBarItem extends StatelessWidget {
  final String text;
  final int index;
  const InitialScreenAppBarItem(
      {super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    InitialScreenController controller = Get.find<InitialScreenController>();
    return GestureDetector(
      onTap: () {
        controller.navigateToSettings();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            color: Colors.red,
            border: Border.all(width: 2, color: Colors.white)),
        child: Text(text),
      ),
    );
  }
}
