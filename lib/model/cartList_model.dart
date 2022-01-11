class CartList {
  final String img;
  final String name;
  final String price;
  final String size;
  final int tag;

  CartList({
    required this.img,
    required this.name,
    required this.price,
    required this.size,
    required this.tag,
  });
}

List<CartList> cartList = [
  CartList(name: "Snoopy T-shirt",price:"\$30",size:"S",img: "assets/images/cartList 1.jpg",tag: 04559812),
  CartList(name: "American",price:"\$30",size:"M",img: "assets/images/cartList 2.jpg",tag: 04459811),

];