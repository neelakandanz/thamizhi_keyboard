import 'package:flutter/material.dart';

import '../../../constant.dart';
//import '../../../controller/mozhi_controller.dart';
import '../../../vesaipalagai_velai.dart';
//import '../space_key.dart';

class EnglishKeys extends StatelessWidget {
  const EnglishKeys({
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
              value: "a",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "b",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "c",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "d",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "e",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "f",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "g",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "h",
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
              value: "i",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "j",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "k",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "l",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "m",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "n",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "o",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "p",
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
              value: "q",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "r",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "s",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "t",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "u",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "v",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "w",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "x",
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
              value: "y",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "z",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌇",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌆",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌅",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌀",
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

        /*  ///row 5
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

class EnglishKeysCap extends StatelessWidget {
  const EnglishKeysCap({
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
              value: "A",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "B",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "C",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "D",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "E",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "F",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "G",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "H",
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
              value: "I",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "J",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "K",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "L",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "M",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "N",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "O",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "P",
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
              value: "Q",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "R",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "S",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "T",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "U",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "V",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "W",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "X",
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
              value: "Y",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "Z",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌇",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌆",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌅",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "⌀",
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

        /*  ///row 5
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
