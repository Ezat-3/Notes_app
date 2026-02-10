import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLine = 1,
    required this.title,
    this.onSaved,
  });
  final int maxLine;
  final String title;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true)
        /* 
        validator: (value) => (value == null || value.isEmpty) ? 'Field is required' : null;

         value is not null && is not empty = true  return null 
         value is null = false return  field is requierd 
       */
        {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
