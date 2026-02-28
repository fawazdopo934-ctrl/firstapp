import 'package:firstapp/models.dart';
import 'package:flutter/material.dart';

AppBar myAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(fontSize: 16),
    ),
    centerTitle: true,
  );
}

//
Column produitCard(Produit produit) {
  return Column(
    children: [
      Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  produit.image,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                  margin: EdgeInsets.only(left: 10.0, top: 10.0),
                  color: Colors.amber,
                  child: Text("Featured"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Add To Cart".toUpperCase(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Text(
                    produit.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$${produit.price}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (_) =>
                              Icon(Icons.star, size: 20, color: Colors.amber),
                        ),
                      ),
                      Text("23")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
