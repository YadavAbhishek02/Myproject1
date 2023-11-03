import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_responsive_ui/colors.dart';
class MyMessageCard extends StatelessWidget {
  final String message;
  final String time;
  const MyMessageCard({super.key, required this.message, required this.time});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
       child: ConstrainedBox(
         constraints: BoxConstraints(
           maxWidth: MediaQuery.of(context).size.width-45,
         ),
         child: Card(
           elevation: 1,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(8),
           ),
           color: messageColor,
           margin:  EdgeInsets.symmetric(horizontal: 15,vertical: 5),
           child: Stack(
             children: [
               Padding(padding: EdgeInsets.fromLTRB(10, 30, 5, 20),
               child: Text(message,style: TextStyle(fontSize: 16),),),
               Positioned(
                   bottom: 4,
                   right: 10,
                   child: Row(
                     children: [
                       Text(time,style: TextStyle(fontSize: 13,color: Colors.white10),),
                       const SizedBox(width: 5,),
                       const Icon(Icons.done_all,size: 20,color: Colors.white60,),
                     ],
                   )
               )
             ],
           ),
         ),
       ),
    );
  }
}
