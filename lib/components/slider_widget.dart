import 'package:capitals_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: 4.5,
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: AppColors.active,
          inactiveColor: AppColors.inActive,
          value: value.toDouble(),
          max: 4,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
