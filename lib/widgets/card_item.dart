import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class CardItem extends StatelessWidget {

  final Item item;

  const CardItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Card(
        child: SizedBox(
          width: double.infinity,
          height: 95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          item.collection
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'R\$ ${item.price}'
                        )
                      ],
                    ),
                    Container(
                      width: 185,
                      height: 24,
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Adicionar ao carrinho',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Image.asset(
                  'assets/images/camisa.jpg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}