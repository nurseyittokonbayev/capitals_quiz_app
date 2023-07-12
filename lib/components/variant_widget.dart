import 'package:capitals_app/constants/app_colors.dart';
import 'package:capitals_app/models/questions.dart';
import 'package:flutter/material.dart';

class VariantWidget extends StatelessWidget {
  const VariantWidget({
    super.key,
    required this.answer,
    required this.onTap,
  });

  final List<Answer> answer;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 100,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          final item = answer[index];
          return GestureDetector(
            onTap: () {
              onTap(item.isTrue);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Center(
                  child: Text(
                    item.text,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
