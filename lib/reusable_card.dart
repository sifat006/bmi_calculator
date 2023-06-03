import 'package:flutter/material.dart';


class ReUsableCard extends StatelessWidget {
 const ReUsableCard({required this.colour, required this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
