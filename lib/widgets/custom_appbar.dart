import 'package:flutter/material.dart';

import 'custom_searh_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 27)),
        CustomSearchIcon(),
      ],
    );
  }
}
