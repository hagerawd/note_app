import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/Note_Models.dart';
import 'package:note_app/note_cubit/note_cubit.dart';
import 'package:intl/intl.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';
import 'colors_list_view.dart';
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
          SizedBox(height: 15,),
          ColorsListView(),
          SizedBox(height: 15,),
          BlocBuilder<NoteCubit,NoteState>(
            builder: (context,state) {
              return CustomButton(
                isLoading: state is NoteStateLoading  ? true : false,
                text: "add",
              onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
                  var noteModel = NoteModel(
                      title: title!, subTitle: subTitle!, date: formattedDate, color: Colors.purple.value);
                  BlocProvider.of<NoteCubit>(context).addNote(noteModel);

                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              },);}
          ),
          SizedBox(height: 45,)

        ],
      ),
    );
  }
}
