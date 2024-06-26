import 'package:flutter/material.dart';
import 'package:lightwork/AppModules/ChatModule/Views/chat_list_view.dart';

class Chat extends StatelessWidget {
   Chat ({super.key});
   List<Map<String, dynamic>> chatList =[
     {
       "text":" Welcome to LightWork! Please let us know what problems you’re facing.",
       "is_me":true,
     },
     {
       "text":" Does the toilet not drain or is the problem that water does not refill in the tank?",
       "is_me":false,
     }
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
        title: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: SizedBox(
                  width: 40, child: Image.asset("assets/Images/Image.png")),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Diagnose with AI",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Answer until the issue is",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),

      body:
      Container(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: chatList.length,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatListView(
                  messagelist: chatList[index],
                );
              }),
        ),

      ),




    );
  }
}
