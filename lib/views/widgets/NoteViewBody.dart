import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_cubit/note_cubit.dart';

import 'CustomAppBar.dart';
import 'NoteItem.dart';
import 'NoteListView.dart';
class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {

  @override
  void initState(){
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(text: "Notes",icon: Icons.search,),

          Expanded(child: Notelistview()),
        ],
      ),
    );
  }
}
