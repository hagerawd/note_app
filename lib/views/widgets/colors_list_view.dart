import 'package:flutter/material.dart';
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex =0;
  final colors = const [
    Color(0xFFFFF9C4), // Soft Yellow
    Color(0xFFFFCDD2), // Soft Pink
    Color(0xFFB2DFDB), // Soft Teal
    Color(0xFFC8E6C9), // Soft Green
    Color(0xFFD1C4E9), // Soft Purple
    Color(0xFFFFE0B2), // Soft Orange
    Color(0xFFBBDEFB), // Soft Blue
    Color(0xFFD7CCC8), // Soft Brown/Grey
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            currentIndex= index;
            setState(() {
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ColorItem(
              color: colors[index],
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

