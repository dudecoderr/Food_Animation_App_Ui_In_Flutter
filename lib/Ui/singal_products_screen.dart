import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_flutter_ui/Constant%20File/topping_select.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';
import 'add_cart_screen.dart';

class singal_products_screen extends StatefulWidget {
  final String? image_location;
  final String? name;

  const singal_products_screen({Key? key, this.image_location, this.name})
      : super(key: key);

  @override
  State<singal_products_screen> createState() => _singal_products_screenState();
}

class _singal_products_screenState extends State<singal_products_screen> {
  ///______ increment decrement ______________________
  int a = 0;
  void add1() {
    setState(() {
      a++;
    });
  }

  void minus1() {
    setState(() {
      if (a != 0) a--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            centerTitle: true,
            elevation: 0,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new)),
            title: Column(
              children: [
                Text(
                  Delivery_to,
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ),
                Text(
                  lekki_phase,
                  style: TextStyle(
                      color: const Color(0xFFFE554A), fontSize: 15.sp),
                ),
              ],
            ),
            actions: [
              Image.asset(profile_1, height: 30.h, width: 40.w),
              SizedBox(width: 5.w),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 224.h,
                        width: 258.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white,
                        ),
                        child: Image.asset(widget.image_location!),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: const Color(0XFFF9881F),
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                onPressed: minus1,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(' $a',
                                style: const TextStyle(
                                    fontSize: 20.0, color: Colors.white)),
                            const SizedBox(width: 12),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                onPressed: add1,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      widget.name!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      width: 190,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0XFFF5A62E),
                            size: 20.sp,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            '4+',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp),
                          ),
                          Spacer(),
                          Text(
                            '🔥',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Text(
                            '300cal',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp),
                          ),
                          Spacer(),
                          Text(
                            '⏰',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            '5-10min',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.h),
                    SizedBox(
                      width: 310,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.yellow),
                          children: <TextSpan>[
                            TextSpan(
                                text: sub,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Mulish",
                                )),
                            TextSpan(
                              text: more,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFFE554A),
                                fontFamily: "Mulish",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Toppings_for_you,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    ///________________ topping_Container __________________
                    const topping_Container(),
                    SizedBox(height: 60.h),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddToCartScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(Add_to_cart,
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
    );
  }
}
