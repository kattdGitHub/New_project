import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_projact/halper/Appconfig.dart';
import 'package:new_projact/halper/appColor.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: AppConfig.width,
            height: AppConfig.height,
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hi, Kristin",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "Let’s start learning",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),textAlign: TextAlign.start
                        ,
                      )
                    ],
                  ),
                  height: 183.h,
                  width: AppConfig.width,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 135.h,
            right: 20.w,
            child: Container(
              height: 96.h,
              width: AppConfig.width - 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
