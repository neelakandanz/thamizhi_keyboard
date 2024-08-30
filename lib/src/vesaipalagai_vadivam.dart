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
  int valueC2 = 0;
  int valueC3 = 0;

  void _update(int newValue) => setState(() {
        valueC = newValue;
        state = true;
      });

  void _update2(int newValue) => setState(() {
        valueC2 = newValue;
        state = false;
      });

  void _update3(int newValue) => setState(() {
        valueC3 = newValue;
        state = true;
      });

  Widget _buildContent() {
    if (state) {
      if (valueC == 1) {
        return valueC3 == 0 ? _buildEnglishKeysCap() : _buildEnglishKeys();
      } else {
        return _buildTamilKeys();
      }
    } else {
      return valueC2 == 0 ? _buildNumKeys() : _buildEnKeys();
    }
  }

  Widget _buildEnglishKeysCap() => EnglishKeysCap(
        theydal: widget.theydal,
        uyirColor: widget.uyirColor,
        uyirMeiColor: widget.uyirMeiColor,
        backgroundColor: widget.backgroundColor,
        eluthualvu: widget.eluthualvul,
        update: _update3,
      );

  Widget _buildEnglishKeys() => EnglishKeys(
        theydal: widget.theydal,
        uyirColor: widget.uyirColor,
        uyirMeiColor: widget.uyirMeiColor,
        backgroundColor: widget.backgroundColor,
        eluthualvu: widget.eluthualvul,
        update: _update,
      );

  Widget _buildTamilKeys() => TamilKeys(
        theydal: widget.theydal,
        uyirColor: widget.uyirColor,
        uyirMeiColor: widget.uyirMeiColor,
        backgroundColor: widget.backgroundColor,
        eluthualvu: widget.eluthualvul,
        update: _update,
      );

  Widget _buildNumKeys() => NumKeys(
        theydal: widget.theydal,
        uyirColor: widget.uyirColor,
        uyirMeiColor: widget.uyirMeiColor,
        backgroundColor: widget.backgroundColor,
        eluthualvu: widget.eluthualvul,
        update: _update,
      );

  Widget _buildEnKeys() => EnKeys(
        theydal: widget.theydal,
        uyirColor: widget.uyirColor,
        uyirMeiColor: widget.uyirMeiColor,
        backgroundColor: widget.backgroundColor,
        eluthualvu: widget.eluthualvul,
        update: _update,
      );

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
      child: Container(
        width: w < 500.0 ? w : w / 1.6,
        decoration: BoxDecoration(
          color: widget.backgroundColor ??
              const Color.fromARGB(255, 230, 213, 213),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildContent(),
              _buildActionRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionRow() => Row(
        children: <Widget>[
          LanguageChangeCap(
            update: _update3,
            value: "⇧",
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
          SpaceKey(
            flex: 2,
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
          AduthaKey(
            flex: 2,
            values: "↩",
            textEditingController: widget.theydal,
            color: ColorsConst.backSpace,
            backgroundColor: widget.backgroundColor,
          ),
        ],
      );
}
