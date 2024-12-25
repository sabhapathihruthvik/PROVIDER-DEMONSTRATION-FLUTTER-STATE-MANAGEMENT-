import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<String> _items = [];
  List<String> get items => _items;

  int get itemCount => _items.length;

  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(String item) {
    _items.remove(item);
    notifyListeners();
  }
}
