import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//part of thamizhi_keyboard;

class Vesaipalagai extends StatelessWidget {
  final String value;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final Color? backgroundColor;
  final double? eluthualvu;

  const Vesaipalagai({
    Key? key,
    required this.value,
    required this.textEditingController,
    this.color,
    this.textColor,
    this.backgroundColor,
    this.eluthualvu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Semantics.fromProperties(
        properties: SemanticsProperties(
          label: value,
          checked: true,
        ),
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: () {
              var temp = textEditingController.text;
              var replaceText = "";

              // Map of Tamil vowel characters to their corresponding replacements
              final replacements = {
                "அ": "",
                "ஆ": "ா",
                "இ": "ி",
                "ஈ": "ீ",
                "உ": "ு",
                "ஊ": "ூ",
                "எ": "ெ",
                "ஏ": "ே",
                "ஐ": "ை",
                "ஒ": "ொ",
                "ஓ": "ோ",
                "ஔ": "ௌ",
                "ஃ": "ி",
              };

              if (temp.endsWith("்") && replacements.containsKey(value)) {
                replaceText = replacements[value]!;
                temp = temp.substring(0, temp.length - 1) + replaceText;
                textEditingController.text = temp;
              } else {
                textEditingController.text += value;
              }
            },
            child: Center(
              child: Container(
                color: color,
                margin: const EdgeInsets.all(2),
                width: 45,
                height: 35,
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: eluthualvu ?? 20),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackKey extends StatelessWidget {
  final String values;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final int flex;
  final Color? backgroundColor;

  const BackKey({
    Key? key,
    required this.values,
    required this.textEditingController,
    this.color,
    this.textColor,
    this.flex = 1,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex, // Restore flex to allow for responsive layout
      child: Semantics(
        label: values,
        checked: true,
        child: GestureDetector(
          onTap: _handleTap,
          child: Container(
            color: backgroundColor ?? Colors.transparent,
            child: Container(
              color: color,
              margin: const EdgeInsets.all(2),
              width: 45,
              height: 35,
              child: Center(
                child: Text(
                  values,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor ??
                        Colors.black, // Apply textColor if provided
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleTap() {
    final text = textEditingController.text;
    if (text.isNotEmpty) {
      textEditingController.text = text.substring(0, text.length - 1);
    }
  }
}
