import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_app_flutter_ui/String%20File/image_string.dart';

import '../String File/text_string.dart';

class CartListData extends StatefulWidget {
  CartListData({super.key});

  @override
  State<CartListData> createState() => _CartListDataState();
}

class _CartListDataState extends State<CartListData> {
  int n = 0;
  void add0() {
    setState(() {
      n++;
    });
  }

  void minus0() {
    setState(() {
      if (n != 0) n--;
    });
  }

//_______________ container list ______________
  List figmaFiles = [
    The_Macdonalds,
    The_Macdonalds,
    The_Macdonalds,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          height: 420.h,
          child: figmaFiles.isNotEmpty
              ? ListView.builder(
                  itemCount: figmaFiles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slidable(
                          key: const ValueKey(1),
                          endActionPane: ActionPane(
                            dismissible: DismissiblePane(onDismissed: () {
                              // we can able to perform to some action here
                            }),
                            motion: const DrawerMotion(),
                            children: [
                              SlidableAction(
                                flex: 3,
                                autoClose: true,
                                onPressed: (value) {
                                  setState(() {
                                    figmaFiles.removeAt(index);
                                  });
                                },
                                backgroundColor: Colors.red.shade100,
                                foregroundColor: Colors.red,
                                icon: Icons.delete,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              SlidableAction(
                                autoClose: true,
                                flex: 3,
                                onPressed: (value) {
                                  setState(() {
                                    figmaFiles.add(index);
                                  });
                                },
                                backgroundColor: Colors.green.shade100,
                                foregroundColor: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(50),
                                icon: Icons.edit,
                              ),
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.all(11),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            width: 338.w,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                Spacer(),

                                ///_________________ increment - decriment ______________
                                SizedBox(
                                  height: 26,
                                  width: 26,
                                  child: FloatingActionButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.r),
                                    ),
                                    onPressed: minus0,
                                    backgroundColor: const Color(0XFFF9881F),
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
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    )),
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
                                    onPressed: add0,
                                    backgroundColor: const Color(0XFFF9881F),
                                    child: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                )
              : const Center(
                  child: Text("Your List is Empty",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
        ));
  }
}
