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
              // print("1" + value);

              var temp = textEditingController.text;
              // print("2" + temp);

              var replaceText = "";
              if (temp.endsWith("்") &&
                  (value == "அ" ||
                      value == "ஆ" ||
                      value == "இ" ||
                      value == "ஈ" ||
                      value == "உ" ||
                      value == "ஊ" ||
                      value == "எ" ||
                      value == "ஏ" ||
                      value == "ஐ" ||
                      value == "ஒ" ||
                      value == "ஓ" ||
                      value == "ஔ" ||
                      value == "ஃ")) {
                // print("OO");

                if (value == "அ") {
                  replaceText = "";
                } else if (value == "ஆ") {
                  replaceText = "ா";
                } else if (value == "இ") {
                  replaceText = "ி";
                } else if (value == "ஈ") {
                  replaceText = "ீ";
                } else if (value == "உ") {
                  replaceText = "ு";
                } else if (value == "ஊ") {
                  replaceText = "ூ";
                } else if (value == "எ") {
                  replaceText = "ெ";
                } else if (value == "ஏ") {
                  replaceText = "ே";
                } else if (value == "ஐ") {
                  replaceText = "ை";
                } else if (value == "ஒ") {
                  replaceText = "ொ";
                } else if (value == "ஓ") {
                  replaceText = "ோ";
                } else if (value == "ஔ") {
                  replaceText = "ௌ";
                } else if (value == "ஃ") {
                  replaceText = "ி";
                } else {
                  replaceText = "";
                }
                temp = temp.substring(0, temp.length - 1);

                temp = temp + replaceText;
                // print(replaceText);
                textEditingController.text = temp;
              } else {
                textEditingController.text += value;
              }
            },
            child: Center(
              child: Container(
                /*
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(9.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        spreadRadius: 4,
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.red,
                        spreadRadius: -4,
                        blurRadius: 5,
                      )
                    ]),
*/
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

  const BackKey(
      {Key? key,
      required this.values,
      required this.textEditingController,
      this.color,
      this.textColor,
      this.flex = 1,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //   flex: flex,
      child: Semantics.fromProperties(
        properties: SemanticsProperties(
          label: values,
          checked: true,
        ),
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: () {
              var temps = textEditingController.text;
              //print(temps);

              // if(temps.length > 0){
              //   temps.substring(0,temps.length-1);
              // }
              ///----------------------------------
              // if (temps != null && temps.length > 0) {
              //   // var tempss;
              //   var tempss = temps.substring(0, temps.length - 1);
              //   textEditingController.text = tempss;
              // } else {
              //   textEditingController.text += values;
              // }
              //--------------
              if (temps.isNotEmpty) {
                var tempss = temps.substring(0, temps.length - 1);
                textEditingController.text = tempss;
              } else {
                // textEditingController.text += values;
              }

              ///-------------------------------------------
            },
            child: Center(
              child: Container(
                color: backgroundColor ?? Colors.grey,
                child: Container(
                  color: color,
                  margin: const EdgeInsets.all(2),
                  //  width: 80,
                  width: 45,
                  height: 35,
                  child: Center(
                      child: Text(
                    values,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
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

/*


class BackspaceKey extends StatelessWidget {
  BackspaceKey({
    Key? key,
    this.value,
    this.textEditingController,
  }) : super(key: key);

  final String? value;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Colors.blue.shade300,
          child: InkWell(
            onTap: () {
              // int fff = textEditingController;
              // textEditingController.text.length-= value;
            },
            child: Container(
              child: Center(
                child: Icon(Icons.backspace),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/




/* 

class SpaceKey extends StatelessWidget {
  final String values;
  final TextEditingController textEditingController;
  final Color? color;
  final textColor;
  final int flex;
  final Color? backgroundColor;
  const SpaceKey({
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
      // flex: flex,
      child: Semantics.fromProperties(
        properties: SemanticsProperties(
          label: values,
          checked: true,
        ),
        child: ExcludeSemantics(
          child: GestureDetector(
            onTap: () {
              var temps = textEditingController.text;
              //print(temps);

              // if(temps.length > 0){
              //   temps.substring(0,temps.length-1);
              // }
              ///----------------------------------
              // if (temps != null && temps.length > 0) {
              //   // var tempss;
              //   var tempss = temps.substring(0, temps.length - 1);
              //   textEditingController.text = tempss;
              // } else {
              //   textEditingController.text += values;
              // }
              //--------------
              if (temps.isNotEmpty) {
                var tempss = temps + ' ';
                textEditingController.text = tempss;
              } else {
                // textEditingController.text += values;
              }

              ///-------------------------------------------
            },
            child: Center(
              child: Container(
                color: backgroundColor ?? Colors.grey,
                child: Container(
                  color: color,
                  margin: const EdgeInsets.all(2),
                  width: 45,
                  //width: 80,
                  height: 35,
                  child: Center(
                      child: Text(
                    values,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
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


*/