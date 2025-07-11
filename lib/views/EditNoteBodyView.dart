import 'package:flutter/material.dart';
import 'package:note_app/models/Note_Models.dart';
import 'package:note_app/views/widgets/EditNoteBody.dart';
class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody(note: note,));
  }
}
