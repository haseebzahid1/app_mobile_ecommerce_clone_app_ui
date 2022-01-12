import 'package:app_mobile_ecommerce_clone_app_ui/model/menusMore%20&%20accountList_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/material.dart';

class Morepage extends StatefulWidget {
  const Morepage({Key? key}) : super(key: key);

  @override
  _MorepageState createState() => _MorepageState();
}

class _MorepageState extends State<Morepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MorePageWidget(),
    );
  }
  Widget MorePageWidget(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/profileUrl.jpg"), fit: BoxFit.cover)),
              ),
              const SizedBox(width: 20,),
              Column(
                children: const [
                  Text("Daniel", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
                  SizedBox(height: 10,),
                  Text("4 Orders", style: TextStyle(fontSize: 15, color: grey),),
                ],
              ),

            ],
          ),
          const SizedBox(height: 15,),
          Container(height: 1,color: Colors.grey.withOpacity(0.6),),
          const SizedBox(height: 25,),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(menusMore.length, (index) {
                MenusMore menusitem = menusMore[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 26),
                  child: Text(
                    menusitem.title,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 22,fontWeight: FontWeight.w500),
                  ),
                );
              })),
          Row(
            children: [
              Expanded(child: Column(
                children: [
                  Container(
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 15, color: white,fontWeight: FontWeight.w600),
                  ),
                ),
              )
                ],
              )),
              SizedBox(width: 30,),
              Expanded(child: Column(
                children: [
                  Container(
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 15, color: white,fontWeight: FontWeight.w600),
                  ),
                ),
              )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
