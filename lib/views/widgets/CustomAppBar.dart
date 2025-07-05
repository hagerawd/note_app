import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(fontSize: 30,

          color: Colors.white,
          decoration: TextDecoration.none,),),
        Spacer(),
        CustomSearchIcon(),

      ],
    );
  }
}
