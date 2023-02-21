import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen.dart';
import '../like_food_screen.dart';
import '../notification_screen.dart';
import '../order_status.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  void OnTapped(int index) {
    setState(() {
      // selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurvedNavBar(
        actionButton: CurvedActionBar(
            onTab: (index) {
              print(index);
            },
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFF9881F), Color(0xFFFF774C)]),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.search,
                size: 30.sp,
                color: Colors.white,
              ),
            ),
            inActiveIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFF9881F), Color(0xFFFF774C)]),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.search,
                size: 30.sp,
                color: Colors.white,
              ),
            ),
            text: ""),
        activeColor: Color(0xFFFE554A),
        navBarBackgroundColor: Colors.white,
        inActiveColor: Colors.grey,
        appBarItems: [
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Color(0xFFFE554A),
                size: 24.sp,
              ),
              inActiveIcon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 24.sp,
              ),
              text: ''),
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFFFE554A),
                size: 24.sp,
              ),
              inActiveIcon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
                size: 24.sp,
              ),
              text: ''),
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.notifications_none,
                color: Color(0xFFFE554A),
                size: 24.sp,
              ),
              inActiveIcon: Icon(
                Icons.notifications_none,
                color: Colors.grey,
                size: 24.sp,
              ),
              text: ''),
          FABBottomAppBarItem(
              activeIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFFFE554A),
                size: 24.sp,
              ),
              inActiveIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
                size: 24.sp,
              ),
              text: ''),
        ],
        bodyItems: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: home_screen(),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: LikeFoodScreen(),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: NotificationPage(),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: OrderStatus(),
          ),
        ],
      ),
    );
  }
}
