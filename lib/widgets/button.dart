import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final IconData icon;
  final String text;

  const ButtonWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              
            ],
          ),
        ),
        Text(
          text,
        )
      ],
    );
  }
}