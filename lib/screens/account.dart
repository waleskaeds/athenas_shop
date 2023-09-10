import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/provider/item_provider.dart';
import 'package:shopping/screens/dialog_form_item.dart';
import 'package:shopping/widgets/card_item_management.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<ItemProvider>(context).listItens;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => const DialogFormItem(),
                );
              }, 
              child: const Text('Adicionar item')
            ),
          ),
          const Text(
            'Todos os Itens',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => CardItemManagement(item: list[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}