import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';

class topping_Container extends StatelessWidget {
  const topping_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 51.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: bun,
            name: Regular_Bun,
          ),
          Category(
            image_location: cheese,
            name: Cheese,
          ),
          Category(
            image_location: meat_sau,
            name: Meat_sau,
          ),
          Category(
            image_location: bun,
            name: Regular_Bun,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? image_location;
  final String? name;

  Category({
    required this.image_location,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 50.h,
              width: 130.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image_location!,
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(width: 10.h),
                  Text(
                    name!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp),
                  ),
                ],
              ),
            )));
  }
}
