import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/Note_Models.dart';
import 'package:note_app/note_cubit/note_cubit.dart';

import '../../constants.dart';
import 'CustomAppBar.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';
import 'EditNoteColorList.dart';
class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50,),
              CustomAppBar(text: "Edit Notes",icon: Icons.check,
              onPressed: (){
                widget.note.title =title ?? widget.note.title;
                widget.note.subTitle =subTitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      content: SizedBox(
                        height: 20,
                        child: Center(
                          child: Text(
                            "Your note has been edited",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),

                    ));

              },),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    CustomTextField( hintText: widget.note.title,
                    onChanged: (value){
                      title=value;
                    },),
                    CustomTextField( hintText: widget.note.subTitle,maxLines: 5,
                    onChanged: (value){
                      subTitle=value;
                    },),
                    EditNoteColorList(note: widget.note ,)


                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
