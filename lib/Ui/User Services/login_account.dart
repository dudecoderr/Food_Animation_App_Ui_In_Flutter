import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import '../Drawer File/drawer_screen.dart';
import 'create_account.dart';
import 'forgot_password.dart';

class LoginAccount extends StatefulWidget {
  const LoginAccount({Key? key}) : super(key: key);

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  final _formKey = GlobalKey<FormState>();

  ///========== Controller===========
  final EmailloginController = TextEditingController();
  final newpasswordController = TextEditingController();

  var passwordVisible1;

  @override
  void initState() {
    passwordVisible1 = true;
  }

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
          SingleChildScrollView(
            child: Padding(
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
                          SizedBox(width: 100.w),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DeawerScreen()));
                            },
                            child: Text(
                              skip,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 49),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            create_An_Account,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 15.h),
                          Text(createAccount_Sun_txt,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),

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
                          controller: EmailloginController,
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

                    ///_____________  text fild password __________________
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Password,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10.h),
                        TextFormField(
                          obscureText: passwordVisible1,
                          controller: newpasswordController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: enter_password,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible1 = !passwordVisible1;
                                });
                              },
                              icon: Icon(
                                passwordVisible1
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please a Enter New Password';
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
                                  builder: (context) =>
                                      const Forgotpassword()));
                        },
                        child: Text("Forgot password",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),

                    ///_______________ btn ____________________
                    SizedBox(height: 115.h),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50.h,
                        width: 220.w,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(google, height: 24.h, width: 24.w),
                              SizedBox(width: 5.w),
                              Text(Sign_in_with_Google,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    ///___________________  ElevatedButton ____________________
                    Column(
                      children: [
                        SizedBox(
                          height: 55.h,
                          width: 335.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFF9881F),
                                Color(0xFFFF774C)
                              ]),
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DeawerScreen()));
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
                              child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccountScreen()));
                        },
                        child: Text(
                          create_An_Account,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0XFFFA5A1E),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
