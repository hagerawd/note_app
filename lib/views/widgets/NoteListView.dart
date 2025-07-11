import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/Note_Models.dart';
import 'package:note_app/note_cubit/note_cubit.dart';
import 'package:note_app/views/widgets/NoteItem.dart';
class Notelistview extends StatelessWidget {
  const Notelistview({super.key});
@override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit,NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
              notes: notes[index],),
            );
          } ),
        );
      }
    );
  }
}
