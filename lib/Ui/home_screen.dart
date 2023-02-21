import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../Constant File/food_category_constantfile.dart';
import '../Constant File/populare_container_constant.dart';
import '../String File/image_string.dart';
import '../String File/text_string.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.1,
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
        leading: IconButton(
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset(profile_1, height: 30.h, width: 40.w),
          SizedBox(width: 5.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
              child: Text(
                Enjoy_Delicious_food,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 28.h),

            ///___________________ Food Category _constant ___________________
            Container(
              height: 100.h,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [FoodCategoryContainer()],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Popular_restaurants,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp),
                  ),
                  Text(
                    View_all,
                    style: TextStyle(
                        color: Color(0XFFFE554A),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            ),

            ///______________________Populare Container Constant ___________________
            const PopulareContainer(),

            ///___________________

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearest Restaurant",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp),
                  ),
                  Text(
                    View_all,
                    style: TextStyle(
                        color: Color(0XFFFE554A),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            ),

            ///______________________Populare Container Constant ___________________
            const PopulareContainer(),
            SizedBox(height: 80.h)
          ],
        ),
      ),
    );
  }
}
