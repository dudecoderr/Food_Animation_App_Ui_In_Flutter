import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../BottomNavigationBar File/bottomnavigationbar.dart';
import 'menu_screen.dart';

class DeawerScreen extends StatefulWidget {
  @override
  _DeawerScreenState createState() => _DeawerScreenState();
}

class _DeawerScreenState extends State<DeawerScreen> {
  final zoomDrawerController = ZoomDrawerController();

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do you want to exit?",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected');
                            exit(0);
                          },
                          child: Text("Yes"),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFF774C)),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          print('no selected');
                          Navigator.of(context).pop();
                        },
                        child:
                            Text("No", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: ZoomDrawer(
          controller: zoomDrawerController,
          menuScreen: const MenuScreen(),
          mainScreen: const bottomBar(),
          showShadow: true, shadowLayer1Color: Colors.grey.shade100,
          shadowLayer2Color: Colors.grey.shade200,
          style: DrawerStyle.defaultStyle,
          angle: -7.0,
          // isRtl: true,
        ),
      ),
    );
  }
}
