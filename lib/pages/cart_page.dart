import 'package:app_mobile_ecommerce_clone_app_ui/model/cartList_model.dart';
import 'package:app_mobile_ecommerce_clone_app_ui/theme_color.dart';
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 0;
  dynamic Function()? decrement(){
    setState(() {
      count--;
    });
  }dynamic Function()? increment(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:CartPageWidget(),
    );
  }

   Widget CartPageWidget(){
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20),
     child: ListView(
       children: [
         SizedBox(height: 20,),
         Column(
           children:
             List.generate(cartList.length, (index){
               CartList cartListItem = cartList[index];
               return Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         width: 140,
                         height: 180,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                                 image: AssetImage(cartListItem.img),fit: BoxFit.cover
                             )
                         ),
                       ),
                       const SizedBox(width: 20,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(cartListItem.name, style: TextStyle(fontSize: 22),),
                           const SizedBox(height: 10,),
                           Text("${cartListItem.tag}",
                             style: TextStyle(
                                 fontSize: 13, color: black.withOpacity(0.7)),
                           ),
                           const SizedBox(height: 10,),
                           Text(cartListItem.size, style: TextStyle(fontSize: 22,),),
                           const SizedBox(height: 40,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                                Text(cartListItem.price, style: TextStyle(fontSize: 22,)),
                               const SizedBox(width: 20,),
                               Row(
                                 children: [
                                   PriceIocn(title: '-',onTab: decrement,),
                                   const SizedBox(width: 10,),
                                   Text("$count", style: const TextStyle(fontSize: 18),),
                                   const SizedBox(width: 10,),
                                   PriceIocn(title: '+',onTab: increment,),
                                 ],
                               )
                             ],
                           )
                         ],
                       )
                     ],
                   ),
                   SizedBox(height: 10,)
                 ],
               );
             })

         ),
         Divider(
           color: grey.withOpacity(0.8),
         ),
         const Padding(
           padding: EdgeInsets.only(left: 10, right: 10),
           child: Text(
             "Do you have a promotion code?",
             style: TextStyle(fontSize: 16),
           ),
         ),
         SizedBox(height: 12,),
         Container(
             color: Colors.grey.withOpacity(0.8),height: 1
         ),
         SizedBox(height: 12,),
         Padding(
           padding: const EdgeInsets.only(left: 10, right: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: const [
               Text(
                 "Delivery",
                 style: TextStyle(fontSize: 16),
               ),
               Text(
                 "Standard - Free",
                 style: TextStyle(fontSize: 16),
               )
             ],
           ),
         ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 20, right: 20),
           child: Container(
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
                 color: black, borderRadius: BorderRadius.circular(50 / 2)),
             child: Center(
               child: Text(
                 "Buy for \$50".toUpperCase(),
                 style: TextStyle(color: white, fontWeight: FontWeight.bold),
               ),
             ),
           ),
         )
       ],
     ),
   ) ;
  }
}


class PriceIocn extends StatelessWidget {
  Function()? onTab;
  final String  title;
   PriceIocn({Key? key,this.onTab,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: black.withOpacity(0.5))),
        child: Center(
          child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)
        ),
      ),
    );
  }
}
