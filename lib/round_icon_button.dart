
import 'package:flutter/material.dart';


class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0XFF4C4E5F),
      elevation: 6.0,
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
