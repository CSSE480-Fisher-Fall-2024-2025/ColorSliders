import 'package:colorsliders/color_slider.dart';
import 'package:flutter/material.dart';

class ColorSlidersPage extends StatefulWidget {
  const ColorSlidersPage({super.key});

  @override
  State<ColorSlidersPage> createState() => _ColorSlidersPageState();
}

class _ColorSlidersPageState extends State<ColorSlidersPage> {
  int redValue = 128, greenValue = 0, blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Sliders"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          ColorSlider(
            label: "Red",
            value: redValue,
            color: Colors.red,
            onChangeCallback: (newRedValue) {
              setState(() {
                redValue = newRedValue.toInt();
              });
            },
          ),
          ColorSlider(
            label: "Green",
            value: greenValue,
            color: Colors.green,
            onChangeCallback: (newGreenValue) {
              setState(() {
                greenValue = newGreenValue.toInt();
              });
            },
          ),
          ColorSlider(
            label: "Blue",
            value: blueValue,
            color: Colors.blue,
            onChangeCallback: (newBlueValue) {
              setState(() {
                blueValue = newBlueValue.toInt();
              });
            },
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              color: Color.fromRGBO(redValue, greenValue, blueValue, 1.0),
            ),
          )
        ],
      ),
    );
  }
}
