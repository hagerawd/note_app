import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.text,required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 30,

          color: Colors.white,
          decoration: TextDecoration.none,),),
        Spacer(),
        CustomIcon(icon: icon,),

      ],
    );
  }
}
