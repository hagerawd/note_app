import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NoteItem.dart';
import 'NoteListView.dart';
class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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
