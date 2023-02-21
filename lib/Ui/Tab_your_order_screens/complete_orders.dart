import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';

class CompleteOrders extends StatefulWidget {
  const CompleteOrders({
    Key? key,
  }) : super(key: key);

  @override
  State<CompleteOrders> createState() => _CompleteOrdersState();
}

class _CompleteOrdersState extends State<CompleteOrders> {
  @override
  Widget build(BuildContext context) {
    int b = 0;
    void add1() {
      setState(() {
        b++;
      });
    }

    void minus1() {
      setState(() {
        if (b != 0) b--;
      });
    }

    ///___________________
    int c = 0;
    void add2() {
      setState(() {
        b++;
      });
    }

    void minus2() {
      setState(() {
        if (b != 0) b--;
      });
    }

////______________
    int d = 0;
    void add3() {
      setState(() {
        b++;
      });
    }

    void minus3() {
      setState(() {
        if (d != 0) d--;
      });
    }

    return Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: 335.w,
                  height: 112.h,
                  child: Row(
                    children: [
                      Image.asset(
                        food_5,
                        height: 45.h,
                        width: 70.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              The_Macdonalds,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              Classic_cheesburger,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "\$23.99",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0XFFFE554A),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),

                      ///_________________ increment - decriment ______________
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: minus1,
                                  backgroundColor: Color(0XFFF9881F),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(' $b',
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black)),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: add1,
                                  child: Icon(Icons.add, color: Colors.white),
                                  backgroundColor: Color(0XFFF9881F),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Order again",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0XFFFE554A),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    right: -8,
                    bottom: 64,
                    child: Image.asset(
                      compler_tag,
                      width: 50.w,
                      height: 90.h,
                    )),
              ],
            ),
            SizedBox(height: 10.h),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: 335.w,
                  height: 112.h,
                  child: Row(
                    children: [
                      Image.asset(
                        food_5,
                        height: 45.h,
                        width: 70.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              The_Macdonalds,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              Classic_cheesburger,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "\$23.99",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0XFFFE554A),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),

                      ///_________________ increment - decriment ______________
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: minus2,
                                  backgroundColor: Color(0XFFF9881F),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(' $c',
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black)),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: add2,
                                  child: Icon(Icons.add, color: Colors.white),
                                  backgroundColor: Color(0XFFF9881F),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Order again",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0XFFFE554A),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    right: -8,
                    bottom: 64,
                    child: Image.asset(
                      compler_tag,
                      width: 50.w,
                      height: 90.h,
                    )),
              ],
            ),
            SizedBox(height: 10.h),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: 335.w,
                  height: 112.h,
                  child: Row(
                    children: [
                      Image.asset(
                        food_5,
                        height: 45.h,
                        width: 70.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              The_Macdonalds,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              Classic_cheesburger,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "\$23.99",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0XFFFE554A),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),

                      ///_________________ increment - decriment ______________
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: minus3,
                                  backgroundColor: Color(0XFFF9881F),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('$d',
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black)),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 26,
                                width: 26,
                                child: FloatingActionButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  onPressed: add3,
                                  child: Icon(Icons.add, color: Colors.white),
                                  backgroundColor: Color(0XFFF9881F),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Order again",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0XFFFE554A),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    right: -8,
                    bottom: 64,
                    child: Image.asset(
                      compler_tag,
                      width: 50.w,
                      height: 90.h,
                    )),
              ],
            )
          ],
        ));
  }
}
