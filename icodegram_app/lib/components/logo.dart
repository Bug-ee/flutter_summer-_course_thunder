import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "iCodegram",
        style: TextStyle(
          color: Color(0xFFFFFFFFF),
          fontFamily: "lobster",
          fontSize: 39.5333366394043,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
