import 'package:flutter/material.dart';
import 'package:new_projact/halper/appbtn.dart';
import 'package:new_projact/halper/halper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            hSize(60),
            Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              "Enter your details below & free sign up",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Color(0xffB8B8D2),
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hSize(20),
            Text(
              "Your  Email",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFieldCustom(),
            hSize(20),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFieldCustom(
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
              ),
            ),
            hSize(30),
            AppBtn(
              title: "Creat account",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  '''By creating an account you have to agree
            with our them & condication.''',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ).paddingOnly(left: 5, top: 10),
              ],
            ),
            hSize(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account？ ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ).paddingSymmetric(
          horizontal: 20,
        ),
      ),
    );
  }
}
