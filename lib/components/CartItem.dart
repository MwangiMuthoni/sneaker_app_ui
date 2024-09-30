import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/Shoe.dart';
import '../models/cart.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;

   CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title:Text('Successfully deleted!') ,

        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(8),),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),

        title: Text(widget.shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
        subtitle: Text('\$' + widget.shoe.price,style: TextStyle(color: Colors.grey,fontSize: 16) , ),
        trailing: IconButton( icon:Icon(Icons.delete ) ,onPressed: removeItemFromCart, ),
      ),
    );
  }
}
