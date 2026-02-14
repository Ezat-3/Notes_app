import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '/cubits/add_note_cubit/add_note_cubit.dart';
import '/cubits/add_note_cubit/add_note_state.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailurState) {
              debugPrint('failed = ${state.errorMessage}');
            }
            if (state is AddNoteSuccessState) {
              Navigator.pop(context);
            }
          },

          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoadingState,
              child: SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
