import 'package:firstapp/chat/actus.dart';
import 'package:firstapp/chat/call.dart';
import 'package:firstapp/chat/chats.dart';
import 'package:firstapp/chat/community.dart';
import 'package:flutter/material.dart';

class ChatLayout extends StatefulWidget {
  const ChatLayout({super.key});

  @override
  State<ChatLayout> createState() => _ChatLayoutState();
}

class _ChatLayoutState extends State<ChatLayout> {
  final List _pagesListe = <Widget>[
    ChatsPage(),
    ActusPage(),
    CommunityPage(),
    CallPage()
  ];

  final List _pagesListeTitle = <String>[
    ChatsPage.title,
    ActusPage.title,
    CommunityPage.title,
    CallPage.title
  ];

  final List _navItemElements = [
    {
      'label': "Discussions",
      'icon': Icons.chat_outlined,
      'active_icon': Icons.chat
    },
    {
      'label': "Actus",
      'icon': Icons.stairs_outlined,
      'active_icon': Icons.stairs
    },
    {
      'label': "Communautés",
      'icon': Icons.people_alt_outlined,
      'active_icon': Icons.people_alt
    },
    {
      'label': "Appels",
      'icon': Icons.call,
      'active_icon': Icons.call,
    },
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pagesListeTitle[_currentPage]),
      ),
      // contenu
      body: _pagesListe[_currentPage],

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        elevation: 0,
        // item active
        currentIndex: _currentPage,
        // tap event
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        items: List.generate(
          _navItemElements.length,
          (index) {
            var item = _navItemElements[index];
            return BottomNavigationBarItem(
              icon: Icon(item['icon']),
              label: item['label'],
              activeIcon: Icon(item['active_icon']),
            );
          },
        ),
      ),
    );
  }
}
