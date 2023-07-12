import 'package:flutter/material.dart';

class MyTappedButton extends StatelessWidget {
  final String text;

  const MyTappedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      // ignore: sort_child_properties_last
      child: Container(
        padding: const EdgeInsets.all(20),
        // ignore: sort_child_properties_last
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: [
            const BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.grey.shade600,
                offset: const Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade700,
              Colors.grey.shade600,
              Colors.grey.shade500,
              Colors.grey.shade200,
            ],
            stops: const [0, 0.1, 0.3, 1],
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
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
          stops: const [0.1, 0.3, 0.8, 1],
        ),
      ),
    );
  }
}
