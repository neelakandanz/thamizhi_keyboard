import 'package:flutter/material.dart';

class AduthaKey extends StatelessWidget {
  final String values;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final int flex;
  final Color? backgroundColor;

  const AduthaKey({
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
    // Ensure buttonWidth is a double value
    final double buttonWidth = screenWidth < 576.0 ? 45.0 : 60.0;

    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: () {
          final currentText = textEditingController.text;

          // Append a newline character to the current text
          textEditingController.text = '$currentText\n';
        },
        child: Container(
          color: backgroundColor ?? Colors.transparent,
          margin: const EdgeInsets.all(2.0),
          width: buttonWidth,
          height: 35.0,
          child: Center(
            child: Container(
              color: color ?? Colors.grey,
              child: Center(
                child: Text(
                  values,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: textColor ?? Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
