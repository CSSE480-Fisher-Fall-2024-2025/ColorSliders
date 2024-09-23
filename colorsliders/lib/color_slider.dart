import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final int value;
  final Color color;
  final Function(int) onChangeCallback;

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
              // Text(value.toStringAsFixed(3)),
              Text(value.toString()),
            ],
          ),
        ),
        Slider(
          activeColor: color,
          value: value.toDouble(),
          min: 0,
          max: 255,
          divisions: 256,
          onChanged: (newValueDouble) {
            onChangeCallback(newValueDouble.toInt());
          },
        ),
      ],
    );
  }
}
