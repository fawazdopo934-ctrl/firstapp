class Produit {
  int id;
  String name;
  String description;
  String image;
  double price;
  bool isFeatured;

  // contructeur
  Produit({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.isFeatured,
  });
}

// création de liste
// var listProduit = [];
// List produitsListe = [];

// produits list
List<Produit> produitsListe = [
  Produit(
    id: 1,
    name: "Cotton Parka",
    description: "Cotton Parka with Faux",
    image: "images/menu-2.jpg",
    price: 290.00,
    isFeatured: false,
  ),
  Produit(
    id: 2,
    name: "Reign of Glitter",
    description: "Reign of Glitter Tang",
    image: "images/img.jpg",
    price: 270.00,
    isFeatured: false,
  ),
  Produit(
    id: 3,
    name: "Cotton Parka",
    description: "Cotton Parka with Faux",
    image: "images/menu-2.jpg",
    price: 260.00,
    isFeatured: true,
  ),
  Produit(
    id: 4,
    name: "Reign of Glitter",
    description: "Reign of Glitter Tang",
    image: "images/img.jpg",
    price: 250.00,
    isFeatured: true,
  ),
];
