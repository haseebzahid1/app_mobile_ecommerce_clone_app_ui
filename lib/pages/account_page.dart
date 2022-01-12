import 'package:app_mobile_ecommerce_clone_app_ui/model/menusMore%20&%20accountList_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AccountpageWidget(),
    );
  }

  Widget AccountpageWidget(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/profileUrl.jpg"),fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Daniel",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Member since 2019",
                    style:
                    TextStyle(fontSize: 14, color: black.withOpacity(0.7),fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: black, borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          "EDIT ACCOUNT",
                          style: TextStyle(fontSize: 14, color: white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              socialIcon(title: 'Orders', icon: Icons.search),
              socialIcon(title: 'My Address', icon: Icons.location_on),
              socialIcon(title: 'Setttings', icon: Icons.settings_suggest),
              
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(thickness: 1,),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: List.generate(
                  accountList.length, (index){
                AccountList accountListItem = accountList[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            accountListItem.title,
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: black.withOpacity(0.5),
                            size: 17,
                          )
                        ],
                      ),
                      SizedBox(height: 16,),
                      Container(
                        height: 2,
                        color: Colors.grey.withOpacity(0.3),
                      )

                    ],
                  ),
                );
              }),
            ),
          ),

        ],
      ),
    );
  }

  Row socialIcon({required String title,required IconData icon}){
    return  Row(
      children: [
        Icon(
          icon,
          color: black,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
