import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../String File/image_string.dart';
import '../../String File/text_string.dart';

class PendingOrders extends StatefulWidget {
  const PendingOrders({
    Key? key,
  }) : super(key: key);

  @override
  State<PendingOrders> createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
  @override
  Widget build(BuildContext context) {
    int n = 0;
    void add1() {
      setState(() {
        n++;
      });
    }

    void minus1() {
      setState(() {
        if (n != 0) n--;
      });
    }

    return Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                          Text(' $n',
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
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                          Text(' $n',
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
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                          Text(' $n',
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
          ],
        ));
  }
}
