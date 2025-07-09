import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_cubit/note_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'AddNoteForm.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocConsumer<NoteCubit,NoteState>(
          listener:(context,state){
            if(state is NoteStateFailure){
              print("failed  ${state.errMessage}");
            }
            if(state is NoteStateSuccess){
              Navigator.pop(context);
            }
          } ,
          builder: (context,state){
          return AbsorbPointer(
              absorbing: state is NoteStateLoading ? true : false,
              child: Padding(
                  padding:  EdgeInsets.only(right: 16,left: 16,top: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: AddNoteForm())));}
      ),
    );
  }
}
