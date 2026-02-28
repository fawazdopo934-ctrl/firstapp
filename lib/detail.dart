import 'package:flutter/material.dart';

class DetailProduit extends StatelessWidget {
  const DetailProduit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // alignement à la verticale
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Stack(
            children: [
              Image.asset(
                "images/menu-2.jpg",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    // fermer cette page
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, size: 25),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: CircleAvatar(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Text(
            "Burger",
            style: TextStyle(fontSize: 20),
          ),
          Text(
              "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime saepe magni, natus accusamus tempora ducimus vero. Omnis, corrupti error enim, praesentium repudiandae possimus ratione cum minima rerum dicta in placeat?"),
        ],
      ),
    );
  }
}
