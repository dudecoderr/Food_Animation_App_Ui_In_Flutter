import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app_flutter_ui/Ui/Tab_your_order_screens/pending_orders.dart';

import 'complete_orders.dart';

class ordersStatusPage extends StatelessWidget {
  const ordersStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      animationDuration: Duration(seconds: 1),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              height: 50.h,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Color(0Xff08080D),
                    borderRadius: BorderRadius.circular(5)),
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    text: "Complete orders",
                  ),
                  Tab(
                    text: 'Pending orders',
                  ),
                ],
              ),
            ),
            SizedBox(
                // height: 200,
                height: 480.h,
                child: const TabBarView(
                  children: [
                    CompleteOrders(),
                    PendingOrders(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
