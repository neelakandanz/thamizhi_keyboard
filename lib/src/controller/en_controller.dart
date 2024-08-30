import 'package:flutter/material.dart';

/// A widget that represents a customizable button with a label.
/// The button updates an external value when tapped.
class EnController extends StatefulWidget {
  /// Callback function to be called when the button is tapped.
  /// It receives the updated index as an argument.
  final ValueChanged<int> update;

  /// The label text to display on the button.
  final String value;

  /// Controller for managing text input (not used directly in this widget).
  final TextEditingController textEditingController;

  /// Optional color for the button's background.
  final Color? color;

  /// Optional color for the text displayed on the button.
  final Color? textColor;

  /// Optional color for the button's background.
  final Color? backgroundColor;

  /// Constructor for [EnController] widget.
  const EnController({
    Key? key,
    required this.update,
    required this.value,
    required this.textEditingController,
    this.color,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  EnControllerState createState() => EnControllerState();
}

class EnControllerState extends State<EnController> {
  /// The current index of the button's state.
  /// It cycles between values defined in [_values].
  int _currentIndex = 0;

  /// List of possible values for the button's state.
  static const List<int> _values = [0, 1];

  /// Handles tap events by updating the current index and calling the callback.
  void _handleTap() {
    setState(() {
      // Update the current index and wrap around using modulo operation.
      _currentIndex = (_currentIndex + 1) % _values.length;

      // Call the callback function with the new index value.
      widget.update(_currentIndex);

      // Debug print the current index for development purposes.
      debugPrint('Current index: $_currentIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Semantics(
        label: widget.value, // Accessibility label for the button.
        checked: true, // Indicates that the button is checked or selected.
        child: GestureDetector(
          onTap: _handleTap, // Handler for tap events.
          child: Container(
            color: widget.backgroundColor ??
                Colors.transparent, // Background color of the button.
            margin: const EdgeInsets.all(2), // Margin around the button.
            width: 45, // Fixed width for the button.
            height: 35, // Fixed height for the button.
            child: Center(
              child: Container(
                color: widget
                    .color, // Color of the inner container (button's color).
                child: Center(
                  child: Text(
                    widget.value, // Text displayed on the button.
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Font weight for the text.
                      color: widget.textColor ??
                          Colors.black, // Color of the text.
                    ),
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
