import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import ' Payment Screen/proceed_payment_screen.dart';
import '../Constant File/add_cart_constant.dart';
import '../String File/image_string.dart';
import '../String File/text_string.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Column(
          children: [
            Text(
              Delivery_to,
              style: TextStyle(color: Colors.black, fontSize: 14.sp),
            ),
            Text(
              lekki_phase,
              style: TextStyle(color: Color(0xFFFE554A), fontSize: 15.sp),
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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              Your_cart,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp),
            ),
            SizedBox(height: 10.h),

            ///_________________ list your cart edit /delet  ___________________
            CartListData(),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 31.h,
                width: 280.w,
                child: Row(
                  children: [
                    Text(
                      Total,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    Spacer(),
                    Text(
                      "\$345",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
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
                                builder: (context) => ProceedToPayment()));
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
            SizedBox(height: 40.h),
          ]),
        ),
      ),
    );
  }
}
