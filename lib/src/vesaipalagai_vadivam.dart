part of thamizhi_keyboard;

class VesaipalagaiVadivam extends StatelessWidget {
  const VesaipalagaiVadivam({
    Key? key,
    required this.theydal,
  }) : super(key: key);
  final TextEditingController theydal;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 3.0, left: 3.0, bottom: 3.0),
      child: Container(
        // height: h < 282.0 ? h / 4 : h / 3,
        width: w < 576.0 ? w : w / 2,
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Vesaipalagai(
                      value: "அ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "இ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "க்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ச்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ட்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "த்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ப்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ற்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Vesaipalagai(
                      value: "உ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "எ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ய்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ர்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ல்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "வ்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ழ்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ள்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Vesaipalagai(
                      value: "ஐ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஓ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ங்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ஞ்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ண்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ந்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ம்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                    Vesaipalagai(
                      value: "ன்",
                      textEditingController: theydal,
                      color: ColorsConst.textUyirMei,
                    ),
                  ],
                ),

                ///row 4
                Row(
                  children: <Widget>[
                    Vesaipalagai(
                      value: "ஆ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஈ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஊ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஏ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஔ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    Vesaipalagai(
                      value: "ஓ",
                      textEditingController: theydal,
                      color: ColorsConst.textUyir,
                    ),
                    SpaceKey(
                      flex: 2,
                      // values: "⌨",
                      values: "␣",
                      textEditingController: theydal,
                      color: ColorsConst.backSpace,
                    ),
                    BackKey(
                      flex: 2,
                      values: "⌫",
                      textEditingController: theydal,
                      color: ColorsConst.backSpace,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
