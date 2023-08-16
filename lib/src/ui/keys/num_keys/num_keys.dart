import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../vesaipalagai_velai.dart';

class NumKeys extends StatelessWidget {
  const NumKeys({
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
              value: "1",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "2",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "3",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "4",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "5",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "6",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "7",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "8",
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
              value: "9",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: ";",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "'",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: '"',
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "<",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: ">",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "?",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "`",
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
              value: "~",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "-",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "/",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "÷",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "×",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "±",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ω",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ρ",
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
              value: "π",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "μ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "λ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "δ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "γ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "β",
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
