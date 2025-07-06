import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/Note_Models.dart';
part 'note_state.dart';
class NoteCubit extends Cubit<NoteState>{
  NoteCubit():super(NoteStateInitial());
  addNote(NoteModel note)async{
    emit(NoteStateLoading());
    try {
      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      emit(NoteStateSuccess());
      await notesBox.add(note);
      
    }   catch (e) {
      emit(NoteStateFailure(e.toString()));
    }

  }
}