import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  ChatListView({super.key, required this.messagelist});

  final messagelist;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: messagelist["is_me"]
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: messagelist["is_me"]
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Container(
                  height: 90,
                  width: 200,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: messagelist["is_me"]
                        ? Colors.grey.shade200
                        : Colors.lightBlueAccent,
                  ),
                  child: Text(
                    messagelist["text"],
                    overflow: TextOverflow.visible,
                    style: TextStyle(fontSize: 14),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "10:05 PM",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
