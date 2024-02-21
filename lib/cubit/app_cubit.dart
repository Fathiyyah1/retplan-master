import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retplan/cubit/app_states.dart';

import '../pages/note.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());
  static AppCubit get(BuildContext context) => BlocProvider.of(context);
  List<Note> savedNotes = [];

  void createEmptyNote() {
    Note note = Note(title: "", date: DateTime.now());
    note.isEditing = true;
    savedNotes.insert(0, note);
    emit(TriggerApp());
  }

  void deleteNote(Note note) {
    savedNotes.remove(note);
    emit(TriggerApp());
  }

  void saveNote(Note note) {
    savedNotes.add(note);
    emit(
        TriggerApp()); // this is to tell the whole app that there's a refresh data.
    // it's like setState()
  }

  void saveEditsNote(int index, Note note) {
    savedNotes.removeAt(index);
    savedNotes.insert(index, note);
    emit(TriggerApp());
  }
}
