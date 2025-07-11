import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  final IconData icon;

  const CustomIcon({super.key,required this.icon, this.onPressed});
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: IconButton(onPressed:onPressed ,icon: Icon(icon),),
      ),
    );
  }
}
