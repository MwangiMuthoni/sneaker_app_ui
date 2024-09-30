import 'package:flutter/material.dart';
import 'package:projects/components/ShoeTile.dart';
import 'package:projects/models/Shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title:Text('Successfully added!') ,
          content: Text('Check your cart'),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) =>
      Column(
     children: [
       Container(

         padding: EdgeInsets.all(12.0),
         margin: EdgeInsets.symmetric(horizontal: 20),
         decoration:BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(8)) ,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Search',style: TextStyle(color: Colors.grey,fontSize: 16),),
             Icon(Icons.search,color: Colors.grey,size:25 ,),
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 25.0),
         child: Text('everyone flies, some fly longer than others', style: TextStyle(color: Colors.grey[600]),),
       ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Text('Hot Picks 🔥 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
           Text('see all',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),

               ) ],
         ),
       ),
       SizedBox(height: 20,),
       Expanded(child: ListView.builder(
         itemCount: 4,
         scrollDirection: Axis.horizontal,
         itemBuilder: (context,index){
           Shoe shoe = value.getShoeList()[index];
           return ShoeTile(
             shoe: shoe,
             onTap: () => addShoeToCart(shoe),
           );
         }
           ),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 25.0 , left: 25.0 , right: 25.0),
         child: Divider(
           color: Colors.white,
         ),
       )
     ],
           ),
    );

  }
}
