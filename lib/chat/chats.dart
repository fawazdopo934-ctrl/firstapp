import 'package:firstapp/models/chat.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  static String title = "Whatsapp";
  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discussions.length,
      itemBuilder: (context, index) {
        var discussion = discussions[index];
        return ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(
            "${discussion.sender}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("${discussion.message}"),
          trailing: SizedBox(
            width: 25,
            height: 25,
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("5"),
            ),
          ),
        );
      },
    );
  }
}
