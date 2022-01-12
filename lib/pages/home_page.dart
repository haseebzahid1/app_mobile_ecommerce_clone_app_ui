import 'package:app_mobile_ecommerce_clone_app_ui/model/categories_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/model/recently_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/model/recommends_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomePageWidget(),
    );
  }


  Widget HomePageWidget(){
    final size = MediaQuery.of(context).size;
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.55,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homeImg.jpg"),fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.favorite, color: white, size: 28,),
                  SizedBox(width: 15,),
                  Icon(Icons.search, color: Colors.white, size: 25,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Winter Collection", style: TextStyle(
                          fontSize: 25, color: white, fontWeight: FontWeight.bold)
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const [
                      Text("DISCOVER", style: TextStyle(
                          fontSize: 15, color: white, fontWeight: FontWeight.bold)
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios, color: white, size: 18,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              const Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Spacer(),
              Row(
                children: const [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16,),
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          height:size.height * 0.24 + 3,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: ListView.builder(
            itemCount: categories.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Categories categoriesItem = categories[index];
              return Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width * 0.40,
                decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                  ClipRRect(
                    borderRadius:BorderRadius.circular(10),
                      child: Image.asset(categoriesItem.img,fit: BoxFit.cover,),
                  ),
                    Container(
                      decoration: BoxDecoration(
                          color: black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          categoriesItem.title,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: white),
                        ),
                      ),
                    )
                  ],
                ),
              );
              },
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              const Text("Recommended for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Spacer(),
              Row(
                children: const [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16,),
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          height:size.height * 0.35 + 3,
          // decoration: BoxDecoration(color: Colors.grey.shade300),
          child: ListView.builder(
            itemCount: recommends.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Recommends recommendsItem = recommends[index];
              return Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width * 0.42,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height * 0.24 + 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(recommendsItem.img),fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      // color: Colors.pink,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      // width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${recommendsItem.title}",
                            style: const TextStyle(fontWeight: FontWeight.bold, color: black, height: 1.5),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "\$ ${recommendsItem.price}",
                            style: const TextStyle(fontWeight: FontWeight.bold, color: grey, height: 1.5),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          height: size.height * 0.28,
          decoration: BoxDecoration(color: Colors.red),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index){
              Categories categoriesItem = categories[index];
            return Stack(
              children: [
                Image.asset(categoriesItem.img,fit: BoxFit.cover,width: size.width,),
                Container(
                  width: size.width,
                  color: Colors.black.withOpacity(0.2),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(categories.length, (generateIndex){
                        return Container(
                          margin: EdgeInsets.only(left: 9),
                          width:index == generateIndex?28:14,
                          height: 14 ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color:index == generateIndex?Colors.white:Colors.grey,
                          ),

                        );
                      }),
                    ),

                )
              ],
            );
          },),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              const Text("Recent viewed", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Spacer(),
              Row(
                children: const [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16,),
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          height:size.height * 0.35 + 3,
          // decoration: BoxDecoration(color: Colors.grey.shade300),
          child: ListView.builder(
            itemCount: recently.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Recently recentlyItem = recently[index];
              return Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width * 0.42,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height * 0.24 + 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(recentlyItem.img),fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        // color: Colors.pink,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      // width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${recentlyItem.title}",
                            style: const TextStyle(fontWeight: FontWeight.bold, color: black, height: 1.5),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "\$ ${recentlyItem.price}",
                            style: const TextStyle(fontWeight: FontWeight.bold, color: grey, height: 1.5),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

