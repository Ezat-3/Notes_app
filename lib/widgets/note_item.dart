import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditNoteView(note: note)),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 12, top: 25),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(fontSize: 23, color: Colors.black54),
                  ),
                ),

                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    context.read<NotesCubit>().fetchAllNotes();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 30),
                ),
              ),
              Text(
                note.date,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
