import 'package:flutter/material.dart';

import '../String File/image_string.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                height: 105,
                width: 347,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(check_notificationPage,
                          width: 57, height: 58),
                    ),
                    Column(
                      children: const [
                        SizedBox(height: 30),
                        SizedBox(
                          width: 220,
                          child: Text('Your order has been taken by the driver',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 3),
                        Padding(
                          padding: EdgeInsets.only(right: 160),
                          child: Text('Recently',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 105,
                width: 347,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(Doller_notification,
                          width: 57, height: 58),
                    ),
                    Column(
                      children: const [
                        SizedBox(height: 35),
                        Text('Topup for \$100 was successful',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 3),
                        Padding(
                          padding: EdgeInsets.only(right: 160),
                          child: Text('10.00 Am',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 105,
                width: 347,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(Cancel_Icon2, width: 57, height: 58),
                    ),
                    Column(
                      children: const [
                        SizedBox(height: 20),
                        Text('Your order has been canceled',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 3),
                        Padding(
                          padding: EdgeInsets.only(right: 140),
                          child: Text('22 Juny 2021',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
