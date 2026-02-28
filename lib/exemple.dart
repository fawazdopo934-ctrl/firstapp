import 'package:flutter/material.dart';

class ExemplePage extends StatelessWidget {
  const ExemplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page d'exemple"),
      ),
      body: SingleChildScrollView(
        // permet au contenu de se scroller à la vertical par défaut
        child: Column(
          children: [
            Image.asset(
              "images/img.jpg",
              // MediaQuery : pour avoir des info sur l'appariel
              width: MediaQuery.sizeOf(context).width,
              height: 250,
              fit: BoxFit.cover,
              // alignment: Alignment.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                spacing: 25,
                children: [
                  Row(
                    // alignement horizontal
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // vertical
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        // alignement horizontal
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Développement mobile",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Création des applications mobile",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 35,
                            color: Colors.deepOrange,
                          ),
                          Text(
                            "41",
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      )
                    ],
                  ),
                  // icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.call,
                            size: 30,
                            color: Colors.purple,
                          ),
                          Text('Call'),
                        ],
                      ),
                      Column(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.near_me,
                            size: 30,
                            color: Colors.purple,
                          ),
                          Text('Route'),
                        ],
                      ),
                      Column(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.purple,
                          ),
                          Text('Shared'),
                        ],
                      ),
                    ],
                  ),

                  // paragraph
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
