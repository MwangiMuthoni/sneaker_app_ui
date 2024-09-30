import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'Shoe.dart';

class Cart extends ChangeNotifier {
List<Shoe> ShoeShop = [
  Shoe(name: 'Nike', price: '250', imagePath: 'img/nikes.png', description: 'Stylish athletic shoes for daily comfort.'),
  Shoe(name: 'Rubber', price: '405', imagePath: 'img/rubbers.png', description: 'Durable, waterproof shoes for rugged use.'),
  Shoe(name: 'Puma', price: '300', imagePath: 'img/puma.png', description: 'High-performance sports shoes with modern design.'),
  Shoe(name: 'Vans', price: '200', imagePath: 'img/vans.png', description: 'Classic skateboard shoes for casual wear.'),
  Shoe(name: 'Boots', price: '100', imagePath: 'img/boots.png', description: 'Rugged boots for outdoor adventures and work.'),
  Shoe(name: 'Converse', price: '120', imagePath: 'img/converse.png', description: 'Timeless sneakers for casual, everyday style.'),

];
List<Shoe> userCart = [];
    List<Shoe> getShoeList() {
  return ShoeShop;
}
List<Shoe> getUserCart (){
      return userCart;
}
void addItemToCart(Shoe shoe){
      userCart.add(shoe);
      notifyListeners();

}
void removeItemFromCart(Shoe shoe){
      userCart.remove(shoe);
      notifyListeners();
}
}