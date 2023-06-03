
import 'package:flutter/material.dart';
import 'constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.bottomText});
  final VoidCallback ontap;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 8),
        width: double.infinity,
        height: kBottomContainerHeight,
        child:  Center(
          child: Text(
          bottomText,
            style: kBottomContainerText,
          ),
        ),
      ),
    );
  }
}
