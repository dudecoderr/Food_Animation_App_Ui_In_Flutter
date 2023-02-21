import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import '../Drawer File/drawer_screen.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  var test;
/*  void initState() {
    navigatetohome();
    super.initState();
  }

  var register;
  navigatetohome() async {
    // await Future.delayed(const Duration(milliseconds: 2));

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                register == null ? DeawerScreen() : DeawerScreen()));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 85.h),
                Image.asset(success_icon, height: 165.h, width: 185.w),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 248.w,
                  child: Text(Your_order_has_tital,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  width: 280.w,
                  child: Text(Your_order_has_sub,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),

          ///_____________ ElevatedButton ___________________
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DeawerScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(Go_back_to_home,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
