import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/provider/item_provider.dart';
import 'package:shopping/widgets/card_item.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<ItemProvider>(context).listItens;
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) => CardItem(item: list[index]),
      )
    );
  }
}