import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text, this.onTap, this.isLoading =false});
  final String text;
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: Center(child: isLoading ? SizedBox(
        height: 25,width: 25
        ,child: CircularProgressIndicator(color: Colors.black,)) :
        Text(text,style: TextStyle(color: Colors.black,fontSize: 20),)),
      ),
    );
  }
}
