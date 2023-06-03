import 'package:flutter/material.dart';

import 'constant.dart';

class CardContent extends StatelessWidget {
  CardContent({this.icon, this.label});

  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(height: 15),
          Text(
            label??"",
            style: kTextStyle,
          ),
        ],
      ),
    );
  }
}
