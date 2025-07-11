import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/Note_Models.dart';
part 'note_state.dart';
class NoteCubit extends Cubit<NoteState>{
  NoteCubit():super(NoteStateInitial());
  List<NoteModel>? notes;
  Color color =const Color(0xFFFFF9C4);
  addNote(NoteModel note)async{
   note.color = color.value;
    emit(NoteStateLoading());
    try {
      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(NoteStateSuccess());
      
    }   catch (e) {
      emit(NoteStateFailure(e.toString()));
    }

  }
  fetchAllNotes(){
      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      notes =notesBox.values.toList();
      emit(NoteSuccess());


  }
}