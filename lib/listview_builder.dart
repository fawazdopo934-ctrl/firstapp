import 'package:flutter/material.dart';

class MyListeViewBuilder extends StatefulWidget {
  const MyListeViewBuilder({super.key});

  @override
  State<MyListeViewBuilder> createState() => _MyListeViewBuilderState();
}

class _MyListeViewBuilderState extends State<MyListeViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listeview Builder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Liste view builder'),
            // liste horizontal
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(color: Colors.pink),
                    child: Text("Item ${index + 1}"),
                  );
                },
              ),
            ),

            // verticale
            ListView.builder(
              // utiliser l'espace nécessaire pour la liste
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xff00ffae)),
                  child: Text("Item $index"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
