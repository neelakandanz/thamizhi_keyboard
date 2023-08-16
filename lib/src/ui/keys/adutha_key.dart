import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return Expanded(
      //  flex: flex,
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
                var tempss = '$temps\n';
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
                  //width: 95,
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
