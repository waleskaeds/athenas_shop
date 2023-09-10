import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class ItemProvider extends ChangeNotifier {

  List<Item> _listItens = [];
  List<Item> get listItens => _listItens;

  saveItem(Map<String, dynamic> data){
    final newItem = Item(
      id: Random().toString(), 
      name: data['name'], 
      collection: data['collection'], 
      price: double.parse(data['price'])
    );

    addItem(newItem);
    print('provider save add');
  }

  Future<void> addItem(Item item) async {
    _listItens.add(item);
    print('provider add item');
    notifyListeners();
  }

  Future<void> getAllItens(Item item) async {
    
  }
  
  
}