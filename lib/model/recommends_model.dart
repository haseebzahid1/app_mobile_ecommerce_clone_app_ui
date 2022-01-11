class Recommends {
  final String title;
  final String img;
  final int price;
  Recommends({
    required this.title,
    required this.img,
    required this.price,
  });
}

List<Recommends> recommends = [
  Recommends(title: "Summer Loose Korean T-shirt",img: "assets/images/recommends 1.jpg",price: 35),
  Recommends(title: "Bat Sleeve Student T-shirt Summer",img: "assets/images/recommends 2.jpg",price: 35),
  Recommends(title: "Summer New Korean Version",img: "assets/images/recommends 3.jpg",price: 25),
  Recommends(title: "Loose-fitting Outside Shirt",img: "assets/images/recommends 4.jpg",price: 20),
  Recommends(title: "Cotton Short-sleeved T-shirt",img: "assets/images/recommends 5.jpg",price: 25),
];