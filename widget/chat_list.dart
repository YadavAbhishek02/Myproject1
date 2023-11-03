import 'package:flutter/cupertino.dart';
import 'package:my_responsive_ui/info.dart';
import 'package:my_responsive_ui/widget/my_message_card.dart';
import 'package:my_responsive_ui/widget/sender_message_card.dart';
class WebChatList extends StatelessWidget {
  const WebChatList({super.key});
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context,index){
        if(messages[index]['isMe']==true) {
          return MyMessageCard(message: messages[index]['text'].toString(), time: messages[index]['time'].toString());
        }
        return SenderMessageCard(message: messages[index]['text'].toString(), time: messages[index]['time'].toString());
        }
    );
  }
}
