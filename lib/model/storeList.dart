class StoreList {
  final String name;
  final String img;
  final int currentIndex;
  StoreList({
    required this.name,
    required this.img,
    required this.currentIndex,
  });
}

List<StoreList> storeList = [
  StoreList(name: "Châtelet - Les Halles, Paris",img: "assets/images/storeList 1.jpg",currentIndex: 1),
  StoreList(name: "Champs-Élysées, Paris",img: "assets/images/storeList 2.jpg",currentIndex: 0),
  StoreList(name: "Châtelet - Les Halles, Paris",img: "assets/images/storeList 3.jpg",currentIndex: 1),
];