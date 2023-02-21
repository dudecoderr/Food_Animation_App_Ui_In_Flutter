import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Constant File/payment_img_select_constant.dart';
import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import 'Payment_details_screen.dart';

class ProceedToPayment extends StatefulWidget {
  const ProceedToPayment({Key? key}) : super(key: key);

  @override
  State<ProceedToPayment> createState() => _ProceedToPaymentState();
}

class _ProceedToPaymentState extends State<ProceedToPayment> {
  ///_____________ select image container  ____________
  RxString image1 = payment_img_1.obs;
  RxInt _selectedIndex = 0.obs;

  ///_____________ check box ____________
  bool Payment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Delivery_method,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 46.h,
                width: 330.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        address,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                    ),
                    Spacer(),
                    Text(
                      Change,
                      style: TextStyle(
                          color: Color(0XFFFE554A),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                height: 46.h,
                width: 330.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        num23490110,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                    ),
                    Spacer(),
                    Text(
                      Change,
                      style: TextStyle(
                          color: Color(0XFFFE554A),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                Payments,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp),
              ),
              SizedBox(height: 25.h),

              ///________ payment image select ________________________
              Row(
                children: [
                  Image.asset(
                    addimg,
                    height: 50.h,
                    width: 50.w,
                  ),
                  SizedBox(width: 25.w),
                  SizedBox(
                    child: Row(
                      children: listImage
                          .asMap()
                          .entries
                          .map((e) => Obx(() {
                                return Container(
                                  height: 58.h,
                                  width: 60.w,
                                  margin: EdgeInsets.only(
                                      left: (e.key == 0) ? 0 : 25),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      _selectedIndex.value = e.key;
                                      image1.value = e.value.assetsImage;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: (_selectedIndex.value == e.key)
                                              ? Color(0xFFF9881F)
                                                  .withOpacity(0.6)
                                              : Color(0xFFFFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Image.asset(
                                        e.value.assetsImage,
                                        height: 50.h,
                                        width: 50.w,
                                      ),
                                    ),
                                  ),
                                );
                              }))
                          .toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22.h),

              ///__________check box___________
              Row(
                children: [
                  Checkbox(
                      // focusColor: Colors.black,
                      activeColor: Colors.black,
                      value: Payment,
                      onChanged: (value) {
                        setState(() {
                          Payment = value!;
                        });
                      }),
                  Text(
                    Pay_on_arrival,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 13.h),

              Text(
                Pay_with_cashPOS_upon_arrival,
                style: TextStyle(
                    color: Color(0xFFFE554A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),

              SizedBox(height: 50.h),

              ///_______________ total product ________________

              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        Delivery_Fee,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                      Spacer(),
                      Text(
                        num$20,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Subtotal,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                      Spacer(),
                      Text(
                        num$520,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    height: 2.h,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        Total,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                      Spacer(),
                      Text(
                        num$540,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaymentDetailsScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(Process_to_payment,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
