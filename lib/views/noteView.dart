import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/NoteViewBody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton( onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
          backgroundColor: Color(0xFF00ACC1),
          shape: CircleBorder(),
        child: Icon(Icons.add,color: Colors.black,),
        ),
        body: NoteViewBody());
  }
}
