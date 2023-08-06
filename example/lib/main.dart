import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/thamizhi_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vesaipalagai Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final texts = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thamizhi Keyboard"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: texts,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 5,
                    color: Colors.greenAccent,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            const SizedBox(
              height: 23,
            ),

            /// Just Add VesipalagaiVadivam Any where
            /// And Pass TextController to theydal
            VesaipalagaiVadivam(
              theydal: texts,
            )
          ],
        ),
      ),
    );
  }
}
