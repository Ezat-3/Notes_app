import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import '../widgets/add_notes_bottom_sheet.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: CircleBorder(),
        onPressed: () {
          showModelButtomSheet(context);
        },
        child: Icon(Icons.add, color: Colors.black, size: 24),
      ),
      body: NotesViewBody(),
    );
  }

  void showModelButtomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(28),
      ),
      context: context,
      builder: (context) => AddNoteBottomSheet(),
    );
  }
}
