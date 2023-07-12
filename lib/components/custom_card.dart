import 'package:capitals_app/models/continents.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.item,
    required this.onTap,
    super.key,
  });

  final Continents item;
  final void Function()? onTap;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                inset: false,
                color: Colors.grey.shade600,
                offset: const Offset(20.0, 20.0),
                blurRadius: 60.0,
              ),
              const BoxShadow(
                inset: false,
                color: Colors.white,
                offset: Offset(-20.0, -20.0),
                blurRadius: 60.0,
              ),
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
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(
                  item.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/icons/${item.image}.png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_outline,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_outline,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_outline,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_outline,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_outline,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
