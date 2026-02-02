import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 35, color: Colors.black),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 25),
              child: const Text(
                'Build your carrer with ezat gerges',
                style: TextStyle(fontSize: 23, color: Colors.black45),
              ),
            ),

            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          Text(
            'may21 , 2022',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
