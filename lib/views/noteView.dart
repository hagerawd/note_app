import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/NoteViewBody.dart';

import '../constants.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton( onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
          backgroundColor: kPrimaryColor,
          shape: CircleBorder(),
        child: Icon(Icons.add,color: Colors.black,),
        ),
        body: NoteViewBody());
  }
}
