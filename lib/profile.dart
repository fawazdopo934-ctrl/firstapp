import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          // alignement horizontal
          crossAxisAlignment: CrossAxisAlignment.center,
          // alignement verticale
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              // l'ombre
              elevation: 8,
              // marge interne
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  // espace entre les éléments
                  spacing: 10,
                  // les éléments à la verticle
                  children: [
                    // photo profile
                    SizedBox(
                      // créer une dimension
                      width: 300,
                      height: 300,
                      child: CircleAvatar(
                        child: ClipOval(
                          // donner une forme ronde
                          child: Image.asset(
                            "images/img.jpg",
                            width: 300,
                            height: 300,
                            // couvre les dimensions
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Développeur web",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Lomé Togo",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    // espace vide
                    SizedBox(height: 10),
                    // disposer les éléments sur une ligne horizontale
                    Row(
                      // alignement à l'horizontal
                      mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      spacing: 20,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
