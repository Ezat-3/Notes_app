import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(radius: 34, backgroundColor: color),
          )
        : CircleAvatar(radius: 38, backgroundColor: color);
  }
}

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int curruntIndex = 0;
  List<Color> colorsList = [
    Color(0xffb4edd2),
    Color(0xffa0cfd3),
    Color(0xff8d94ba),
    Color(0xff9a7aa0),
    Color(0xff87677b),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              curruntIndex = index;
              setState(() {});
              BlocProvider.of<AddNoteCubit>(context).color = colorsList[index]
                  .toARGB32();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ColorItem(
                isActive: curruntIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
