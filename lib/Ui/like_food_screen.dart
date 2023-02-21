import 'package:flutter/material.dart';

import '../Constant File/like_food_constant_file.dart';

class LikeFoodScreen extends StatefulWidget {
  const LikeFoodScreen({Key? key}) : super(key: key);

  @override
  State<LikeFoodScreen> createState() => _LikeFoodScreenState();
}

class _LikeFoodScreenState extends State<LikeFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Favorite Food",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: LikeContainer(),
      ),
    );
  }
}
