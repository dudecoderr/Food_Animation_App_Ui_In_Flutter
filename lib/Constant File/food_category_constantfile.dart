// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../String File/image_string.dart';
// import '../String File/text_string.dart';
//
// RxString image1 = payment_img_1.obs;
// RxInt _selectedIndex = 0.obs;
//
// class FoodCategoryContainer extends StatelessWidget {
//   const FoodCategoryContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.red,
//       height: 112.h,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           Category(
//             image_location: pizza_1,
//             name: Pizza,
//           ),
//           Category(
//             image_location: food_2,
//             name: Burger,
//           ),
//           Category(
//             image_location: food_3,
//             name: Sausage,
//           ),
//           Category(
//             image_location: food_4,
//             name: Samosa,
//           ),
//           Category(
//             image_location: food_1,
//             name: Pizza,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Category extends StatelessWidget {
//   final String image_location;
//   final String name;
//
//   Category({
//     required this.image_location,
//     required this.name,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {},
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Container(
//             height: 109.h,
//             width: 85.w,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(50.r)),
//             child: Container(
//               height: 86.98.h,
//               width: 64.96.w,
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   color: Colors.green.shade50,
//                   borderRadius: BorderRadius.circular(50.r)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(image_location, height: 35.h, width: 35.w),
//                   Text(name,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w400)),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_flutter_ui/Constant%20File/payment_img_select_constant.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../String File/image_string.dart';

class FoodCategoryContainer extends StatefulWidget {
  const FoodCategoryContainer({Key? key}) : super(key: key);

  @override
  State<FoodCategoryContainer> createState() => _FoodCategoryContainerState();
}

class _FoodCategoryContainerState extends State<FoodCategoryContainer> {
  RxString image1 = payment_img_1.obs;
  RxInt _selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: foodlistImage
            .asMap()
            .entries
            .map((e) => Obx(() {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        _selectedIndex.value = e.key;
                        image1.value = e.value.assetsImage;
                      },
                      child: Container(
                        height: 109.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(color: Colors.grey),
                            border: Border.all(
                              color: (_selectedIndex.value == e.key)
                                  ? Colors.green
                                  : Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(50.r)),
                        child: Container(
                          height: 86.98.h,
                          width: 64.96.w,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              // color: Colors.green.shade50,
                              color: (_selectedIndex.value == e.key)
                                  ? Color(0XFFA9E88B)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(50.r)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(e.value.assetsImage,
                                  height: 35.h, width: 35.w),
                              Text(e.value.text!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  /* Container(
                    height: 58.h,
                    width: 60.w,
                    margin: EdgeInsets.only(left: (e.key == 0) ? 0 : 25),
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
                                ? Color(0xFFF9881F).withOpacity(0.6)
                                : Color(0xFFFFFFFF),
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          e.value.assetsImage,
                          height: 50.h,
                          width: 50.w,
                        ),
                      ),
                    ),
                  );*/
                }))
            .toList(),
      ),
    );
  }
}
