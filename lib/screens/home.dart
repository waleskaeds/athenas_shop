import 'package:flutter/material.dart';
import 'package:shopping/screens/feminine.dart';
import 'package:shopping/screens/initial.dart';
import 'package:shopping/screens/account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Atenas Shop",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
          tabs: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Tudo',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            Text(
              'Carrinho',
              style: TextStyle(
                  fontSize: 16
                ),
            ),
            Text(
              'Conta',
              style: TextStyle(
                  fontSize: 16
                ),
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            InitialScreen(),
            FeminineScreen(),
            AccountScreen(),
          ])
      ),
    );
  }
}