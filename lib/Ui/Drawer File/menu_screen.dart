import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';

import '../ Payment Screen/proceed_payment_screen.dart';
import '../../String File/image_string.dart';
import '../../String File/text_string.dart';
import '../User Services/login_account.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListTileTheme(
          textColor: Colors.black,
          iconColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 60),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(top: 24.0),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    profile_1,
                  ),
                ),
                Text(
                  Marvis_name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5.h),
                Text(
                  dosamarvis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 35.h),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person_outline_rounded),
                  title: Text(My_profile),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProceedToPayment()));
                  },
                  leading: Icon(Icons.payment),
                  title: Text(Payment),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.settings),
                  title: Text(Settings),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.help),
                  title: const Text(Help),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.feed),
                  title: Text(Privacy),
                ),
                SizedBox(height: 75.h),
                SizedBox(
                  height: 49.h,
                  width: 101.w,
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
                                builder: (context) => LoginAccount()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Log Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
