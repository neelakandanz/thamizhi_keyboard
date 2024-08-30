import 'package:flutter/material.dart';

class SpaceKey extends StatelessWidget {
  final String values;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final int flex;
  final Color? backgroundColor;

  const SpaceKey({
    Key? key,
    required this.values,
    required this.textEditingController,
    this.color,
    this.textColor,
    required this.flex,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: () {
          final currentText = textEditingController.text;

          // Append a space to the current text
          textEditingController.text = '$currentText ';
        },
        child: Container(
          color: backgroundColor ?? Colors.transparent,
          child: Container(
            color: color ?? Colors.grey,
            margin: const EdgeInsets.all(2),
            width: screenWidth < 576.0 ? 95 : 140,
            height: 35,
            child: Center(
              child: Text(
                values,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor ?? Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
