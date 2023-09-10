import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class CardItemManagement extends StatelessWidget {
  final Item item;
  const CardItemManagement({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          item.name,
          style: const TextStyle(
            fontWeight: FontWeight.w500
          ),
        ),
        subtitle: Text('${item.collection} | R\$ ${item.price}'),
        trailing: const Icon(
          Icons.delete,
          size: 30,
        ),
      ),
    );
  }
}