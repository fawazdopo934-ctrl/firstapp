import 'package:firstapp/chat/layout.dart';
import 'package:firstapp/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
// afficher alert dialog
    void displayAlertDialog(String title, String content) {
      showDialog(
        // barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            content: Text(content),
            actions: [
              TextButton(
                  onPressed: () {
                    // traitement
                  },
                  child: Text("Oui")),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Fermer"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Accueil"),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.more_vert),
        ],
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) {
          //
          // currentIndex = value
        },
        backgroundColor: Colors.blue[100],
        // showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.pink, size: 30),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Panier"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      // menu mobile (tiroire)
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        width: MediaQuery.of(context).size.width * 0.7,
        child: ListView(
          children: [
            Container(
              // height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
              child: DrawerHeader(
                  child: Row(
                spacing: 20,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "images/img.jpg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doé",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.7) - 160,
                        child: Text("Développeur d'application"),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.7) - 155,
                        child: Text(
                          "(+228) 93 57 12 79",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Historique"),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: 10,
            ),
          ],
        ),
      ),

      // contenu
      body: Column(
        children: [
          Text(
            "Bienvenue",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(child: Text("Ravi de vous revoir")),
          Text(
              "Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web's absolute positioning layout model."),

          SizedBox(height: 20),
          // navigation
          // bouton
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              // aller vers la page profile
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ),
              );
            },
            child: Text(
              "Mon profile",
              style: TextStyle(color: Colors.white),
            ),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // navigation
              Navigator.pushNamed(context, 'detail');
            },
            child: Text("Détail produit"),
          ),

          // wrap
          Wrap(
            spacing: 20,
            children: [
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'exemple');
                },
                child: Text("Exemple layout"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'compteur');
                },
                child: Text("Compteur"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'myListe');
                },
                child: Text("Liste View"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'myListeBuilder');
                },
                child: Text("Liste View Builder"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'myGridView');
                },
                child: Text("Grid View"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'list-produit');
                },
                child: Text("Liste produits"),
              ),
              ElevatedButton(
                onPressed: () {
                  // navigation
                  Navigator.pushNamed(context, 'todo');
                },
                child: Text("liste de tâches"),
              ),
              ElevatedButton(
                onPressed: () {
                  displayAlertDialog("Afficher dialog",
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi perferendis consequatur necessitatibus ipsa consectetur optio? Nostrum ipsum animi inventore facere dolorem quas amet, distinctio, at placeat nulla voluptate eaque odit.");
                },
                child: Text("Afficher dialog"),
              ),
              ElevatedButton(
                onPressed: () {
                  //  navigation
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ChatLayout()));
                },
                child: Text("Chat page"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
