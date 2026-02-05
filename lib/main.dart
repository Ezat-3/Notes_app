import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '/models/note_model.dart';
import '/constants.dart';
import '/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);

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
