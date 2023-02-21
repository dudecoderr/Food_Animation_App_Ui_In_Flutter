import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_flutter_ui/Ui/User%20Services/reset_password.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final _formKey = GlobalKey<FormState>();

  ///========== Controller===========
  final EmailforgotController = TextEditingController();

  ///============submit button===========
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, right: 20, left: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          Forgot_password,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 15.h),
                        Text(Forgot_password_sub,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h),

                  ///_____________  text fild Email __________________
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(email_Address,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 10.h),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: EmailforgotController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: email_Address,
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please a Enter your Email Address';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPassword()));
                      },
                      child: Text(Reset_Password,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///___________________  ElevatedButton ____________________
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
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
                    onPressed: () {
                      _submit();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(" Change Password ",
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
