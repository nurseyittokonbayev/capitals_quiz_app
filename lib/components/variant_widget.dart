import 'package:capitals_app/models/questions.dart';
import 'package:flutter/material.dart';

class VariantWidget extends StatefulWidget {
  VariantWidget({
    super.key,
    required this.answer,
    required this.onTap,
  });

  final List<Answer> answer;
  final Function(bool) onTap;
  bool? isTrue;
  bool? isFalse;

  @override
  State<VariantWidget> createState() => _VariantWidgetState();
}

class _VariantWidgetState extends State<VariantWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 100,
        ),
        itemCount: widget.answer.length,
        itemBuilder: (context, index) {
          final item = widget.answer[index];

          return GestureDetector(
            onTap: () {
              widget.onTap(item.isTrue);
              setState(() {
                widget.isTrue = true;
                widget.isFalse = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: item.isTrue == widget.isTrue
                      ? Colors.green
                      : item.isTrue == widget.isFalse
                          ? Colors.red
                          : Colors.white,
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
                  ],
                ),
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
