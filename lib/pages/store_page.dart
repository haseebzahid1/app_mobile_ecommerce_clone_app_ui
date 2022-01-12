import 'package:app_mobile_ecommerce_clone_app_ui/model/storeList.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: StorePageWidget(),
    );
  }
  Widget StorePageWidget(){
    final Size size  = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("Phnom Penh", style: TextStyle(fontSize: 16),),
            SizedBox(width: 10,),
            Icon(Icons.location_on, size: 20,)
          ],
        ),
        const SizedBox(height: 20,),
        const Text(
          "Find all \nstores here",
          style: TextStyle(
              fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            Flexible(
              child:inputFieldSearch(color: Color(0xffEFEFEF), title: 'Search'),
            ),
            SizedBox(width: 20,),
            Container(
              height: 45,
              width: 45,
              decoration:
              BoxDecoration(color: black, shape: BoxShape.circle),
              child: const Center(
                child: Icon(Icons.location_on, color: white, size: 20,),
              ),
            )
          ],
        ),
        const SizedBox(height: 20,),
        Divider(color: grey.withOpacity(0.8),height: 3,),
        const SizedBox(height: 20,),
        const Text("All stores", style: TextStyle(fontSize: 22, color: black),),
        const SizedBox(height: 20,),
        Column(
          children: List.generate(storeList.length, (index){
            StoreList storeListItem = storeList[index];
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(storeListItem.img,fit: BoxFit.cover,),
                    Container(
                      decoration: BoxDecoration(
                          color: black.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                        ),
                        child:storeListItem.currentIndex==0? row(
                            title: 'Close', color: Colors.red)
                            :row(
                            title: 'Open', color: Colors.green),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, size: 20, color: white),
                          const SizedBox(width: 10,),
                          Text(
                            storeListItem.name,
                            style: const TextStyle(fontSize: 18, color: white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        )
      ],
    );
  }

  Row row({required Color color,required String title}){
    return Row(
      children:  [
         Text(
          title,
          style: const TextStyle(
              fontSize: 12,
              color: black,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5,),
        Container(
          width: 8,
          height: 8,
          decoration:  BoxDecoration(
              // color: Colors.redAccent,
              color: color,
              shape: BoxShape.circle),
        )
      ],
    );
  }

  Widget inputFieldSearch({required String title, required Color color}){
    return TextFormField(
      cursorColor: Colors.white,
      cursorRadius: const Radius.circular(10.0),
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none ),
        suffixIcon: const Icon(Icons.search, color: Colors.grey,),
        filled: true,
        // fillColor: Color(0xffEFEFEF),
        fillColor: color,
      ),
    );
  }
}
