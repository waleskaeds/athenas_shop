import 'package:flutter/material.dart';
import 'package:shopping/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Exo'
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}