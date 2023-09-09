import 'package:flutter/material.dart';
import 'package:shopping/widgets/button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  icon: Icons.abc,
                  text: 'Casacos',
                ),
                ButtonWidget(
                  icon: Icons.abc,
                  text: 'Calças',
                ),
                ButtonWidget(
                  icon: Icons.abc,
                  text: 'Saias',
                ),
                ButtonWidget(
                  icon: Icons.abc,
                  text: 'Camisas',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}