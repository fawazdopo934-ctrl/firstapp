import 'dart:ui';

import 'package:firstapp/compteur.dart';
import 'package:firstapp/detail.dart';
import 'package:firstapp/exemple.dart';
import 'package:firstapp/grid_view.dart';
import 'package:firstapp/home.dart';
import 'package:firstapp/list_produit.dart';
import 'package:firstapp/listview.dart';
import 'package:firstapp/listview_builder.dart';
import 'package:firstapp/profile.dart';
import 'package:firstapp/todo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      // home: HomePage(),
      initialRoute: '/',
      // définition de routes de pages
      routes: {
        '/': (context) => HomePage(),
        'profile': (context) => MyProfile(),
        'detail': (context) => DetailProduit(),
        'exemple': (context) => ExemplePage(),
        'compteur': (context) => Compteur(),
        'myListe': (context) => MyListeView(),
        'myListeBuilder': (context) => MyListeViewBuilder(),
        'myGridView': (context) => MyGridView(),
        'list-produit': (context) => ListProduit(),
        'todo': (context) => TodoList(),
      },
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
