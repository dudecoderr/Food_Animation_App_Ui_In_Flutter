import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import '../Drawer File/drawer_screen.dart';
import 'login_account.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  ///========== Controller===========
  final EmailController = TextEditingController();
  final newpasswordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  var passwordVisible1;
  var passwordVisible2;

  @override
  void initState() {
    passwordVisible1 = true;
    passwordVisible2 = true;
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
      body: SingleChildScrollView(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 49),
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
                      controller: EmailController,
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

                ///_____________  text fild conform Password __________________
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(confirm_Password,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 10.h),
                    TextFormField(
                      obscureText: passwordVisible2,
                      controller: confirmpasswordController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: confirm_Password,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible2 = !passwordVisible2;
                            });
                          },
                          icon: Icon(
                            passwordVisible2
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please re-enter password';
                        }
                        print(newpasswordController.text);

                        print(confirmpasswordController.text);

                        if (newpasswordController.text !=
                            confirmpasswordController.text) {
                          return "Password does not match";
                        }

                        return null;
                      },
                    ),
                  ],
                ),

                ///_______________ btn ____________________
                SizedBox(height: 52.h),
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
                        // shadowColor: Colors.black,
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Column(
                    children: [
                      SizedBox(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginAccount()));
                            },
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
                      SizedBox(height: 20.h),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginAccount()));
                        },
                        child: Text(
                          Login_to_my_account,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0XFFFA5A1E),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
