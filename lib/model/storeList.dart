class StoreList {
  final String title;
  final String img;
  final int price;
  StoreList({
    required this.title,
    required this.img,
    required this.price,
  });
}

List<StoreList> storeList = [
  StoreList(title: "Châtelet - Les Halles, Paris",img: "assets/images/storeList 1.jpg",price: 1),
  StoreList(title: "Champs-Élysées, Paris",img: "assets/images/storeList 2.jpg",price: 0),
  StoreList(title: "Châtelet - Les Halles, Paris",img: "assets/images/storeList 3.jpg",price: 1),
];