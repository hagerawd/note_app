import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/Note_Models.dart';
import 'package:note_app/note_cubit/note_cubit.dart';
import 'package:note_app/views/EditNoteBodyView.dart';

import '../../constants.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context , MaterialPageRoute(builder: (context){
          return EditNoteBodyView(note: notes,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 12),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(notes.title,style: TextStyle(color: Colors.black,fontSize: 24),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 18,bottom: 14),
              child: Text(notes.subTitle,style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
            ),
              trailing: IconButton(
                  onPressed: (){
                    notes.delete();
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
                                "The note has been removed",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ));
                    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                  },
                  icon :Icon(Icons.delete_rounded,color: Colors.black,size: 30,)),
            
            
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(notes.date,style: TextStyle(color: Colors.black.withOpacity(.5)),),
            )
          ],
        ),
        
      ),
    );
  }
}
