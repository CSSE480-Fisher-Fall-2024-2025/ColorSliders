import 'package:colorsliders/color_slider.dart';
import 'package:flutter/material.dart';

class ColorSlidersPage extends StatefulWidget {
  const ColorSlidersPage({super.key});

  @override
  State<ColorSlidersPage> createState() => _ColorSlidersPageState();
}

class _ColorSlidersPageState extends State<ColorSlidersPage> {
  double redValue = 0.5, greenValue = 0.0, blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Sliders"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          ColorSlider(
            label: "Red",
            value: redValue,
            color: Colors.red,
            onChangeCallback: (newRedValue) {
              setState(() {
                redValue = newRedValue;
              });
            },
          ),
          ColorSlider(
            label: "Green",
            value: greenValue,
            color: Colors.green,
            onChangeCallback: (newGreenValue) {
              setState(() {
                greenValue = newGreenValue;
              });
            },
          ),
          ColorSlider(
            label: "Blue",
            value: blueValue,
            color: Colors.blue,
            onChangeCallback: (newBlueValue) {
              setState(() {
                blueValue = newBlueValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
