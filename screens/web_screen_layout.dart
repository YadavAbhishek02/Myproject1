import 'package:flutter/material.dart';
import 'package:my_responsive_ui/colors.dart';
import 'package:my_responsive_ui/widget/chat_list.dart';
import 'package:my_responsive_ui/widget/contacts_list.dart';
import 'package:my_responsive_ui/widget/web_search_bar.dart';
import '../widget/web_chat_appbar.dart';
import '../widget/web_profile_bar.dart';
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration:const  BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child:  Column(
              children: [
                const WebChatAppBar(),
                const Expanded(
                    child: WebChatList()),

                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: dividerColor)
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined),color: Colors.grey,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file),color: Colors.grey,),
                      Expanded(
                          child:Padding(padding:const  EdgeInsets.only(left: 10,right: 15,),
                          child: TextField(
                            decoration: InputDecoration(
                            fillColor: searchBarColor,
                              filled: true,
                              hintText: 'type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  style: BorderStyle.none,
                                  width: 0,
                                )
                              ),
                              contentPadding: const EdgeInsets.only(left: 20)
                            ),
                          ),
                          )
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.mic),color: Colors.grey,),
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      )
    );
  }
}
