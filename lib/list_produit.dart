import 'package:firstapp/models.dart';
import 'package:firstapp/reutilisable.dart';
import 'package:flutter/material.dart';

class ListProduit extends StatelessWidget {
  const ListProduit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Liste de produits"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Liste de produits"),
            Wrap(
              children: List.generate(produitsListe.length, (index) {
                Produit produit = produitsListe[index];
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width >= 768
                      ? MediaQuery.sizeOf(context).width / 3
                      : MediaQuery.sizeOf(context).width / 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: produitCard(produit),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
