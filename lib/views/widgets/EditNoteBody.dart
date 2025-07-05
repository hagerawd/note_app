import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';
class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50,),
              CustomAppBar(text: "Edit Notes",icon: Icons.check),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    CustomTextField( hintText: "Title",),
                    CustomTextField( hintText: "Content",maxLines: 5,),
                    SizedBox(height: 430,),
                    CustomButton(text: "Save",),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
