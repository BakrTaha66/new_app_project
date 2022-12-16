import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List<String> _cart = ['Ipone', 'Samsung', 'Opoo'];

  int get count => _cart.length;

  List<String> get cart => _cart;

  void addItem(String item) {
    _cart.add(item);
    notifyListeners();
  }
}
