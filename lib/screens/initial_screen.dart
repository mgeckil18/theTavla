import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thetavla/widgets/initial_screen_app_bar.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        child: Column(
          children: [InitialScreenAppBar()],
          // MainMenuGridView(),
          // BottomMenu(),
        ),
      ),
    );
  }
}
