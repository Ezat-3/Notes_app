import 'package:flutter/material.dart';
import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(title: 'title'),
            SizedBox(height: 24),
            CustomTextField(title: 'description', maxLine: 5),
            SizedBox(height: 50),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
