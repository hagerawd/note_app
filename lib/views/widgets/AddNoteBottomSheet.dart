import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24,),
              CustomTextField( hintText: "Title",),
              CustomTextField( hintText: "Content",maxLines: 5,),
              SizedBox(height: 130,),
              CustomButton(text: "add",),
            ],
          ),
        ),
      ),
    );
  }
}
