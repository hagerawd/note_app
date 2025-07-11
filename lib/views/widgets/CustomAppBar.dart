import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.text,required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 30,

          color: Colors.white,
          decoration: TextDecoration.none,),),
        Spacer(),
        CustomIcon(icon: icon,onPressed: onPressed,),

      ],
    );
  }
}
