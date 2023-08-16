import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../controller/mozhi_controller.dart';
import '../../../vesaipalagai_velai.dart';
import '../space_key.dart';

class TamilKeys extends StatelessWidget {
  const TamilKeys({
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
              value: "அ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "இ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "க்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ச்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ட்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "த்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ப்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ற்",
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
              value: "உ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "எ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ய்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ர்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ல்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "வ்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ழ்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ள்",
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
              value: "ஐ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஓ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ங்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஞ்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ண்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ந்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ம்",
              textEditingController: theydal,
              color: uyirMeiColor ?? ColorsConst.textUyirMei,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ன்",
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
              value: "ஆ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஈ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஊ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஏ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஔ",
              textEditingController: theydal,
              color: uyirColor ?? ColorsConst.textUyir,
              backgroundColor: backgroundColor,
              eluthualvu: eluthualvu,
            ),
            Vesaipalagai(
              value: "ஓ",
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
