import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_projact/halper/Appconfig.dart';
import 'package:new_projact/halper/appColor.dart';
import 'package:new_projact/halper/halper.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: AppConfig.width,
            height: AppConfig.height,
            child: Column(
              children: [
                Container(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        hSize(30),
                        Row(
                          children: [
                            Text(
                              "Hi, Kristin",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Image(image: AssetImage("assets/Avatar.png"))
                          ],
                        ),
                        Text(
                          "Let’s start learning",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ).paddingSymmetric(horizontal: 15.h),
                  ),
                  height: 183.h,
                  width: AppConfig.width,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                ),
                hSize(70),
                Container(
                  height: 154.h,
                  width: 253.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                )
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
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.0,
                      spreadRadius: 2.0,
                      offset: Offset(
                        0,
                        3,
                      ))
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: AppColors.creamColor,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Learned today",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.textColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "My courses",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "46min",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "/ 60min",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          ),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage(
                        "assets/splaasScreenImage/Rectangle 30.png",
                      ),
                    )
                  ],
                ).paddingSymmetric(
                  horizontal: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
