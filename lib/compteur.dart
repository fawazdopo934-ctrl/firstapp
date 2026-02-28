import 'package:flutter/material.dart';

// le statefulWidget permet de changer l'état des widgets s'il y a eu changement
class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  // déclaration de variables et constante
  int count = 0;

  // methode
  _increment() {
    // count += 1;
    // count = count+1;
    setState(() {
      count++;
    });
    print(count);
  }

  _decrease() {
    if (count > 0) {
      setState(() {
        count--;
      });
      print(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compteur"),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _decrease,
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Text("$count", style: TextStyle(fontSize: 50)),
                ElevatedButton(
                  onPressed: _increment,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
