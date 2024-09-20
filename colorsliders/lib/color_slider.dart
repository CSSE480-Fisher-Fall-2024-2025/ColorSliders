import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final double value;
  final Color color;
  final Function(double) onChangeCallback;

  const ColorSlider({
    super.key,
    required this.label,
    required this.value,
    required this.color,
    required this.onChangeCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              Text(value.toStringAsFixed(3)),
            ],
          ),
        ),
        Slider(
          activeColor: color,
          value: value,
          onChanged: onChangeCallback,
        ),
      ],
    );
  }
}
