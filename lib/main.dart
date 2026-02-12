import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import '/models/note_model.dart';
import '/constants.dart';
import '/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(
    NoteModelAdapter(),
  ); // لازم اعمل تعريف ل الادبتور قبل البوكس
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: kPrimaryFont),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
