import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 30),

            CustomTextField(title: "title"),
            SizedBox(height: 30),
            CustomTextField(title: "title", maxLine: 5),
          ],
        ),
      ),
    );
  }
}
