import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../vesaipalagai_velai.dart';

class EnKeys extends StatelessWidget {
  const EnKeys({
    super.key,
    required this.update,
    required this.theydal,
    this.uyirColor,
    this.uyirMeiColor,
    this.backgroundColor,
    this.eluthualvu,
    // required this.currentMozhi,
  });
  final ValueChanged<int> update;
  final TextEditingController theydal;
  final Color? uyirColor;
  final Color? uyirMeiColor;
  final Color? backgroundColor;
  final double? eluthualvu;
  //final int currentMozhi;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Vesaipalagai(
              value: "௧",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௨",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௩",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௪",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௫",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௬",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௭",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௮",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Vesaipalagai(
              value: "௯",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "௰",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "{",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "}",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "[",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "]",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "|",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "|",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
          ],
        ),
        Row(
          children: [
            Vesaipalagai(
              value: "!",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "@",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "#",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "%",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "%",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "^",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "&",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "*",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
          ],
        ),

        ///row 4
        Row(
          children: [
            Vesaipalagai(
              value: "(",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: ")",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "_",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "+",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "=",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: ":",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "0",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),

            // SpaceKey(
            //   flex: 2,
            //   // values: "⌨",
            //   values: "␣",
            //   textEditingController: theydal,
            //   color: ColorsConst.backSpace,
            //   backgroundColor: backgroundColor,
            // ),

            BackKey(
              flex: 2,
              values: "⌫",
              textEditingController: theydal,
              color: ColorsConst.backSpace,
              backgroundColor: backgroundColor,
            ),
          ],
        ),
/*
        ///row 5
        Row(
          children: [
            Vesaipalagai(
              value: "ஆ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
            ),
            Vesaipalagai(
              value: ",",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
            ),
            LanguageChange(
              update: update,
              value: "⍝",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
            ),
            //   LanguageChange(values: "⍝", textEditingController: theydal),
            // Vesaipalagai(
            //   //  value: "🌏︎",
            //   value: "⍝",
            //   textEditingController: theydal,
            //   color: uyirColor ?? ColorsConst.textUyir,
            //   backgroundColor: backgroundColor,
            // ),
            // Vesaipalagai(
            //   value: "ஏ",
            //   textEditingController: theydal,
            //   color: uyirColor ?? ColorsConst.textUyir,
            //   backgroundColor: backgroundColor,
            // ),
            SpaceKey(
              flex: 02,
              // flex: 2,
              // values: "⌨",
              values: "␣",
              textEditingController: theydal,
              color: ColorsConst.backSpace,
              backgroundColor: backgroundColor,
            ),
            Vesaipalagai(
              value: "ஔ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
            ),
            Vesaipalagai(
              value: ".",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
            ),
            // SpaceKey(
            //   flex: 2,
            //   // values: "⌨",
            //   values: "␣",
            //   textEditingController: theydal,
            //   color: ColorsConst.backSpace,
            //   backgroundColor: backgroundColor,
            // ),
            BackKey(
              flex: 2,
              values: "⌫",
              textEditingController: theydal,
              color: ColorsConst.backSpace,
              backgroundColor: backgroundColor,
            ),
          ],
        ),
      
      */
      ],
    );
  }
}
