import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constante.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
    try{
      var notesBox= Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccessState());
      await notesBox.add(note);
    }catch(e){
      AddNoteErrorState(e.toString());
    }
  }
}
