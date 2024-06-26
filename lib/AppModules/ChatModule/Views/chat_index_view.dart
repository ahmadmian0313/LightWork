import 'package:flutter/material.dart';
import 'package:lightwork/AppModules/ChatModule/Views/chat_view.dart';

import 'chat_list_view.dart';


class ChatIndexView extends StatelessWidget {
  const ChatIndexView({super.key});

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
      ListView.builder(
        itemCount: 20,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Chat()),);
        },
        child: ListTile(
          title: Text("Zong 4G",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Text("Free Zong Minutes"),

        ),
      );
    }) ,
    );
  }
}
