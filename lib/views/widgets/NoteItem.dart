import 'package:flutter/material.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 24),),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 18,bottom: 14),
            child: Text("Build Your Career With \n Tharwat Samy ",style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
          ),
            trailing: IconButton(onPressed: (){},icon :Icon(Icons.delete_rounded,color: Colors.black,size: 30,)),
          
          
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("may21,2021",style: TextStyle(color: Colors.black.withOpacity(.5)),),
          )
        ],
      ),
      
    );
  }
}
