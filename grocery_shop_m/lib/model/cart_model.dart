import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class cartmodel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

//list of carts item
  List _CartItem = [];

  get shopItems => _shopItems;
  get cartItem => _CartItem;

  //add to the cart
  void addItemToCart(int Index) {
    _CartItem.add(_shopItems[Index]);
    notifyListeners();
  }

  //romeve item in the carts
  void removeItemToCart(int Index) {
    _CartItem.remove(_shopItems[Index]);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalprice = 0;
    for (int i = 0; i < _CartItem.length; i++) {
      totalprice += double.parse(_CartItem[i][1]);
    }

    return totalprice.toStringAsFixed(2);
  }
}
