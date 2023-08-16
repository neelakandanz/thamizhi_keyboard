part of thamizhi_keyboard;

class VesaipalagaiVadivam extends StatefulWidget {
  const VesaipalagaiVadivam({
    Key? key,
    required this.theydal,
    this.uyirColor,
    this.uyirMeiColor,
    this.backgroundColor,
    this.eluthualvul,
  }) : super(key: key);
  final TextEditingController theydal;
  final Color? uyirColor;
  final Color? uyirMeiColor;
  final Color? backgroundColor;
  final double? eluthualvul;

  @override
  State<VesaipalagaiVadivam> createState() => _VesaipalagaiVadivamState();
}

class _VesaipalagaiVadivamState extends State<VesaipalagaiVadivam> {
  bool state = true;
  int valueC = 0;

  // Pass this method to the child page.
  void _update(int newValue) {
    //setState(() => valueC = newValue);
    setState(() {
      valueC = newValue;
      state = true;
    });
  }

  int valueC2 = 0;
  // Pass this method to the child page.
  void _update2(int newValue) {
    //  setState(() => valueC = newValue);
    setState(() {
      valueC2 = newValue;
      state = false;
    });
  }
  // bool? valueN;
  // void updateNo(bool newValue) {
  //   setState(() => valueC = newValue);
  // }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 3.0, left: 3.0, bottom: 3.0),
      child: Container(
        // height: h < 282.0 ? h / 4 : h / 3,
        width: w < 500.0 ? w : w / 1.6,
        decoration: BoxDecoration(
            color: widget.backgroundColor ?? Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(18))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                state
                    ? valueC == 1
                        ? EnglishKeys(
                            theydal: widget.theydal,
                            uyirColor: widget.uyirColor,
                            uyirMeiColor: widget.uyirMeiColor,
                            backgroundColor: widget.backgroundColor,
                            eluthualvu: widget.eluthualvul,
                            //currentMozhi: update,
                            update: _update,
                          )
                        : TamilKeys(
                            theydal: widget.theydal,
                            uyirColor: widget.uyirColor,
                            uyirMeiColor: widget.uyirMeiColor,
                            backgroundColor: widget.backgroundColor,
                            eluthualvu: widget.eluthualvul,
                            //currentMozhi: update,
                            update: _update,
                          )
                    : valueC2 == 0
                        ? NumKeys(
                            theydal: widget.theydal,
                            uyirColor: widget.uyirColor,
                            uyirMeiColor: widget.uyirMeiColor,
                            backgroundColor: widget.backgroundColor,
                            eluthualvu: widget.eluthualvul,
                            //currentMozhi: update,
                            update: _update,
                          )
                        : EnKeys(
                            theydal: widget.theydal,
                            uyirColor: widget.uyirColor,
                            uyirMeiColor: widget.uyirMeiColor,
                            backgroundColor: widget.backgroundColor,
                            eluthualvu: widget.eluthualvul,
                            //currentMozhi: update,
                            update: _update,
                          ),

                ///row 5
                Row(
                  children: <Widget>[
                    Vesaipalagai(
                      value: "⬍",
                      //"⇧",
                      textEditingController: widget.theydal,
                      color: widget.uyirColor ?? ColorsConst.textUyir,
                      backgroundColor: widget.backgroundColor,
                    ),
                    Vesaipalagai(
                      value: ",",
                      textEditingController: widget.theydal,
                      color: widget.uyirColor ?? ColorsConst.textUyir,
                      backgroundColor: widget.backgroundColor,
                    ),
                    LanguageChange(
                      update: _update,
                      value: "⍝",
                      textEditingController: widget.theydal,
                      color: widget.uyirColor ?? ColorsConst.textUyir,
                      backgroundColor: widget.backgroundColor,
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
                      textEditingController: widget.theydal,
                      color: ColorsConst.backSpace,
                      backgroundColor: widget.backgroundColor,
                    ),
                    EnController(
                      update: _update2,
                      value: "௧/2",
                      textEditingController: widget.theydal,
                      color: widget.uyirColor ?? ColorsConst.textUyir,
                      backgroundColor: widget.backgroundColor,
                    ),
                    Vesaipalagai(
                      value: ".",
                      textEditingController: widget.theydal,
                      color: widget.uyirColor ?? ColorsConst.textUyir,
                      backgroundColor: widget.backgroundColor,
                    ),
                    // SpaceKey(
                    //   flex: 2,
                    //   // values: "⌨",
                    //   values: "␣",
                    //   textEditingController: theydal,
                    //   color: ColorsConst.backSpace,
                    //   backgroundColor: backgroundColor,
                    // ),
                    AduthaKey(
                      flex: 2,
                      values: "↩",
                      textEditingController: widget.theydal,
                      color: ColorsConst.backSpace,
                      backgroundColor: widget.backgroundColor,
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
