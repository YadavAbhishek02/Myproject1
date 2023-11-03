import 'package:flutter/material.dart';
import 'package:my_responsive_ui/colors.dart';

import '../info.dart';
import '../widget/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
   centerTitle: false,
        actions:const  [
          Icon(Icons.video_call),
          SizedBox(width: 5,),
          Icon(Icons.call),
          SizedBox(width: 5,),
          Icon(Icons.more_vert),

        ],
      ),
      body:  Column(
        children:  [
          const Expanded(
              child: WebChatList()),
          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child:Row(
                  children: [
                    Icon(Icons.emoji_emotions,color: Colors.grey,),
                  ],
                ),),
              suffixIcon:const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                         child:Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                            Icon(Icons.attach_file,color: Colors.grey,),
                            Icon(Icons.money,color: Colors.grey,),],),),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
              ),

          )
          ),
        ],
      ),
    );
  }
}
