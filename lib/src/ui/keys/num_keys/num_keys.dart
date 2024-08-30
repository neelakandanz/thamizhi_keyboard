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
  });

  final ValueChanged<int> update;
  final TextEditingController theydal;
  final Color? uyirColor;
  final Color? uyirMeiColor;
  final Color? backgroundColor;
  final double? eluthualvu;

  Widget _buildKey(String value, {Color? color}) {
    return Vesaipalagai(
      value: value,
      textEditingController: theydal,
      color: color ??
          (value.contains(RegExp(r'[0-9]'))
              ? (uyirColor ?? ColorsConst.textUyir)
              : (uyirMeiColor ?? ColorsConst.textUyirMei)),
      backgroundColor: backgroundColor,
      eluthualvu: eluthualvu,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: [
            _buildKey("1"),
            _buildKey("2"),
            _buildKey("3"),
            _buildKey("4"),
            _buildKey("5"),
            _buildKey("6"),
            _buildKey("7"),
            _buildKey("8"),
          ],
        ),
        Row(
          children: [
            _buildKey("9"),
            _buildKey(";"),
            _buildKey("'"),
            _buildKey('"'),
            _buildKey("<"),
            _buildKey(">"),
            _buildKey("?"),
            _buildKey("`"),
          ],
        ),
        Row(
          children: [
            _buildKey("~"),
            _buildKey("-"),
            _buildKey("/"),
            _buildKey("÷"),
            _buildKey("×"),
            _buildKey("±"),
            _buildKey("ω"),
            _buildKey("ρ"),
          ],
        ),
        Row(
          children: [
            _buildKey("π"),
            _buildKey("μ"),
            _buildKey("λ"),
            _buildKey("δ"),
            _buildKey("γ"),
            _buildKey("β"),
            _buildKey("0"),
            BackKey(
              flex: 2,
              values: "⌫",
              textEditingController: theydal,
              color: ColorsConst.backSpace,
              backgroundColor: backgroundColor,
            ),
          ],
        ),
      ],
    );
  }
}
