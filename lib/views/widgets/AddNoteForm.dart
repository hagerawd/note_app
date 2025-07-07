import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [

          CustomTextField( hintText: "Title",
            onSaved: (value){
              title=value;
            },),
          CustomTextField( hintText: "Content",maxLines: 5,
            onSaved: (value){
              subTitle=value;
            },),
          SizedBox(height: 110,),
          CustomButton(text: "add",
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();

              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },),

        ],
      ),
    );
  }
}
