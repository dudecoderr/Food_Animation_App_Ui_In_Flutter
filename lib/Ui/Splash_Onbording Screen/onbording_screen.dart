import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../../Constant File/onbording_contents_file.dart';
import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import '../Drawer File/drawer_screen.dart';
import '../User Services/create_account.dart';
import '../User Services/login_account.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 145),
                        child: Row(
                          children: [
                            Image.asset(app_icon, width: 34.w, height: 23.25.h),
                            SizedBox(width: 100.w),
                            InkWell(
                              onTap: () {
                                if (currentIndex == contents.length - 1) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DeawerScreen(),
                                    ),
                                  );
                                }
                                _controller.nextPage(
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.bounceIn,
                                );
                              },
                              child: Text(
                                currentIndex == contents.length - 1
                                    ? " "
                                    : skip,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0XFFFA5A1E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      PhloxAnimations(
                        duration: const Duration(seconds: 1),
                        fromDegrees: 40,
                        fromScale: 0,
                        fromOpacity: 0.1,
                        fromX: 100,
                        child: Text(
                          contents[i].title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      PhloxAnimations(
                        duration: const Duration(seconds: 1),
                        fromY: -100,
                        // fromX: -50,
                        child: Image.asset(
                          contents[i].image!,
                          height: 260.h,
                          width: 338.w,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          ///___________________  ElevatedButton ____________________

          Padding(
            padding: const EdgeInsets.only(bottom: 65),
            child: Column(
              children: [
                SizedBox(
                  height: 55.h,
                  width: 335.w,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xFFF9881F), Color(0xFFFF774C)]),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CreateAccountScreen(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                      /*onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccountScreen()));
                      },*/
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        currentIndex == contents.length - 1
                            ? create_An_Account
                            : "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
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
                    login,
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
    );
  }
  // FF774C F9881F

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7.h,
      width: currentIndex == index ? 9 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: currentIndex == index ? Color(0XFF0B735F) : Colors.grey.shade400,
      ),
    );
  }
}
