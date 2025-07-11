import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/note_cubit/note_cubit.dart';

import '../../constants.dart';
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            currentIndex= index;
            BlocProvider.of<NoteCubit>(context).color=kColors[index];
            setState(() {
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      }),
    );
  }
}
class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
      backgroundColor: Colors.white,
      radius: 34,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 30,
      ),
    )
        : CircleAvatar(
      backgroundColor: color,
      radius: 30,
    );
  }
}

