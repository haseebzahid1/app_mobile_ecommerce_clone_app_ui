import 'package:app_mobile_ecommerce_clone_app_ui/model/colors%20&%20size%20&%20itemsTab_modle.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
   dynamic  appbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: const Text("ACCOUNT", style: TextStyle(color: black),
          ),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: const Text(
            "CART", style: TextStyle(color: black),
          ),
        );
        break;
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: const Text("MORE", style: TextStyle(color: black),
          ),
        );
        break;
      default:
    }
  }

  Widget getFooter(){
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2))),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index){
            ItemsTab itemTabItem = itemsTab[index];
            return IconButton(
              onPressed: (){
                setState(() {
                  activeTab = index;
                });
              },
              icon: Icon(
                itemTabItem.icon,
                size: itemTabItem.size,
                color: activeTab==index?accent:Colors.black,
              ),
            );
          }),
        ),
      ),
    );
  }
}

