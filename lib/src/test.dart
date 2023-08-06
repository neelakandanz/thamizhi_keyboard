//part of thamizhi_keyboard;

import 'package:flutter/material.dart';

class TestMe extends StatefulWidget {
  const TestMe({super.key});

  @override
  State<TestMe> createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    );
  }
}
