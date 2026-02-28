import 'package:firstapp/models.dart';
import 'package:firstapp/reutilisable.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    Produit produit = produitsListe.first;
    double sWidth = MediaQuery.sizeOf(context).width;
    double sHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: myAppBar('Grid view'),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: sWidth / sHeight,
        shrinkWrap: true,
        children: [
          produitCard(produit),
          produitCard(produit),
          produitCard(produit),
          produitCard(produit),
          produitCard(produit),
          produitCard(produit),
        ],
      ),
    );
  }
}
