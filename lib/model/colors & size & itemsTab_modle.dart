import 'package:flutter/material.dart';

class ColorsList {
  final String title;
  final Color color;



  ColorsList({
    required this.title,
    required this.color,
  });
}

List<ColorsList> colors = [
  ColorsList(title: "title",color: Colors.green),
  ColorsList(title: "title",color: Colors.blue),
  ColorsList(title: "title",color: Colors.orange),
  ColorsList(title: "title",color: Colors.black),

];





class Sizes {
  final String title;

  Sizes({
    required this.title,
  });
}


List<Sizes> sizes = [
  Sizes(title: "S"),
  Sizes(title: "M"),
  Sizes(title: "L"),
  Sizes(title: "XL"),
  Sizes(title: "XXL"),

];


class ItemsTab {
  final double size;
  final IconData icon;
  ItemsTab({
    required this.size,
    required this.icon,
  });
}

List<ItemsTab> itemsTab = [
  ItemsTab(icon: Icons.home,size:28.0),
  ItemsTab(icon: Icons.more_horiz,size:22.0),
  ItemsTab(icon: Icons.home,size:21.0),
  ItemsTab(icon: Icons.more_horiz,size:22.0),
  ItemsTab(icon: Icons.home,size:40.0),

];