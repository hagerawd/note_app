part of 'note_cubit.dart';
abstract class NoteState{}

class NoteStateInitial extends NoteState{}
class NoteStateLoading extends NoteState{}
class NoteStateSuccess extends NoteState{}
class NoteReadSuccess extends NoteState{
  final List<NoteModel> notes;

  NoteReadSuccess(this.notes);
}
class NoteStateFailure extends NoteState{
  final errMessage;

  NoteStateFailure(this.errMessage);
}