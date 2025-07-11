import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/note_cubit/note_cubit.dart';
import 'AddNoteForm.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocConsumer<NoteCubit,NoteState>(
          listenWhen: (previous, current) {
            return previous != current; // فقط نفّذ listener لو الحالة اتغيرت فعلًا
          },
          listener:(context,state){
            if(state is NoteStateFailure){
              print("failed  ${state.errMessage}");
            }
            if (state is NoteStateSuccess) {
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
                        "Your note has been saved",
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
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              });


            }
          } ,
          builder: (context,state){
          return AbsorbPointer(
              absorbing: state is NoteStateLoading ? true : false,
              child: Padding(
                  padding:  EdgeInsets.only(right: 16,left: 16,top: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: AddNoteForm())));}
      ),
    );
  }
}
