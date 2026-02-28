import 'package:flutter/material.dart';

class MyListeView extends StatelessWidget {
  const MyListeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Widget"),
        centerTitle: true,
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
          Text("Item 4"),
          Text("Item 5"),
          Text("Item 6"),
          Text("Item 7"),
          Text("Item 8"),
          Text("Item 9"),
          Text("Item 10"),
          Text("Item 4"),
          Text("Item 5"),
          Text("Item 6"),
          Text("Item 7"),
          Text("Item 8"),
          Text("Item 9"),
          Text("Item 10"),
          // générer une liste
          Column(
            children: List.generate(
              100,
              (index) => Text("Item généré $index"),
            ),
          )
        ],
      ),
    );
  }
}
