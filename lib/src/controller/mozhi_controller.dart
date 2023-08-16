import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LanguageChange extends StatefulWidget {
  final ValueChanged<int> update;
  final String value;
  final TextEditingController textEditingController;
  final Color? color;
  final Color? textColor;
  final Color? backgroundColor;

  const LanguageChange({
    Key? key,
    required this.update,
    required this.value,
    required this.textEditingController,
    this.color,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  List<int> it = [
    0,
    1,
  ];
  int ci = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Semantics.fromProperties(
        properties: SemanticsProperties(
          label: widget.value,
          checked: true,
        ),
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: () {
              // print("1" + value);

              // var temp = widget.textEditingController.text;
              // print("2" + temp);
              // debugPrint("changeLanguage");
              if (ci == it.length - 1) {
                ci = 0;
                // update("0");
                debugPrint('***000*** $ci');
                widget.update(ci);
              } else {
                ci++;
                // update("0");
                //Value.setString(ci.toString());
                debugPrint("uu111uuu $ci");
                widget.update(ci);
              }
              setState(() {});
            },
            child: Center(
              child: Container(
                color: widget.backgroundColor ?? Colors.grey,
                child: Container(
                  color: widget.color,
                  margin: const EdgeInsets.all(2),
                  width: 45,
                  height: 35,
                  child: Center(
                      child: Text(
                    widget.value,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
