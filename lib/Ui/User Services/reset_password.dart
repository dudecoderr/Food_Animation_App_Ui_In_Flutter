import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, right: 20, left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 145),
                  child: Row(
                    children: [
                      Image.asset(app_icon, width: 34.w, height: 23.25.h),
                      SizedBox(width: 81.w),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          Cancel,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0XFFFA5A1E),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 90, bottom: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Reset_Password,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 15.h),
                      Text(Reset_Password_sub,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(height: 70),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white54,
                        ),
                        height: 90,
                        width: 340,
                        child: Align(
                          // alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: PinCodeTextField(
                              length: 4,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                inactiveColor: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 60,
                                fieldWidth: 60,
                                activeFillColor: Colors.white,
                              ),
                              onChanged: (value) {
                                debugPrint(value);
                                setState(() {
                                  var currentText = value;
                                });
                              },
                              appContext: context,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///___________________  ElevatedButton ____________________
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 55.h,
                width: 335.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFF9881F), Color(0xFFFF774C)]),
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(create_An_Account,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
