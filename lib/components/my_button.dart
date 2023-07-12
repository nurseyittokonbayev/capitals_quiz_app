import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;

  const MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade200,
              Colors.grey.shade300,
              Colors.grey.shade400,
              Colors.grey.shade500,
            ],
            stops: const [
              0.1,
              0.3,
              0.8,
              1
            ]),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
