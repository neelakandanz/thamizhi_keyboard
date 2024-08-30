import 'package:flutter/material.dart';

abstract class LanguageChangeBase extends StatefulWidget {
  final ValueChanged<int> update;
  final String value;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final Color? backgroundColor;

  const LanguageChangeBase({
    Key? key,
    required this.update,
    required this.value,
    required this.textEditingController,
    this.color,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);
}

class LanguageChange extends LanguageChangeBase {
  const LanguageChange({
    Key? key,
    required ValueChanged<int> update,
    required String value,
    required TextEditingController textEditingController,
    Color? color,
    Color? textColor,
    Color? backgroundColor,
  }) : super(
          key: key,
          update: update,
          value: value,
          textEditingController: textEditingController,
          color: color,
          textColor: textColor,
          backgroundColor: backgroundColor,
        );

  @override
  LanguageChangeState createState() => LanguageChangeState();
}

class LanguageChangeState extends State<LanguageChange> {
  List<int> _values = [0, 1];
  int _currentIndex = 0;

  void _handleTap() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _values.length;
      widget.update(_currentIndex);
      debugPrint('Current index: $_currentIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Semantics(
        label: widget.value,
        checked: true,
        child: GestureDetector(
          onTap: _handleTap,
          child: Container(
            color: widget.backgroundColor ?? Colors.transparent,
            child: Container(
              color: widget.color,
              margin: const EdgeInsets.all(2),
              width: 45,
              height: 35,
              child: Center(
                child: Text(
                  widget.value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.textColor ?? Colors.black,
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

class LanguageChangeCap extends LanguageChangeBase {
  const LanguageChangeCap({
    Key? key,
    required ValueChanged<int> update,
    required String value,
    required TextEditingController textEditingController,
    Color? color,
    Color? textColor,
    Color? backgroundColor,
  }) : super(
          key: key,
          update: update,
          value: value,
          textEditingController: textEditingController,
          color: color,
          textColor: textColor,
          backgroundColor: backgroundColor,
        );

  @override
  LanguageChangeCapState createState() => LanguageChangeCapState();
}

class LanguageChangeCapState extends State<LanguageChangeCap> {
  List<int> _values = [0, 1];
  int _currentIndex = 0;

  void _handleTap() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _values.length;
      widget.update(_currentIndex);
      debugPrint('Current index: $_currentIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Semantics(
        label: widget.value,
        checked: true,
        child: GestureDetector(
          onTap: _handleTap,
          child: Container(
            color: widget.backgroundColor ?? Colors.transparent,
            child: Container(
              color: widget.color,
              margin: const EdgeInsets.all(2),
              width: 45,
              height: 35,
              child: Center(
                child: Text(
                  widget.value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.textColor ?? Colors.black,
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
