import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/NoteItem.dart';
class Notelistview extends StatelessWidget {
  const Notelistview({super.key});
  final colors = const [
    Color(0xFFFFF9C4), // Soft Yellow
    Color(0xFFFFCDD2), // Soft Pink
    Color(0xFFB2DFDB), // Soft Teal
    Color(0xFFC8E6C9), // Soft Green
    Color(0xFFD1C4E9), // Soft Purple
    Color(0xFFFFE0B2), // Soft Orange
    Color(0xFFBBDEFB), // Soft Blue
    Color(0xFFD7CCC8), // Soft Brown/Grey
  ];
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder:(context,index){
        final color = colors[index % colors.length];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(color: color,),
        );
      } ),
    );
  }
}
