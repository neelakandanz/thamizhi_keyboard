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

  bool openKeyboard = false;
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

              ///  Use onTap Properties to open and close keyboard.
              onTap: () {
                debugPrint("open Keyboard");
                setState(() {
                  openKeyboard = true;
                });
              },

              ///"readOnly = true" disables default keyboard on TextField for mobile or desktop.
              //readOnly: true,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: () {
                      debugPrint("close Keyboard");
                      setState(() {
                        openKeyboard = false;
                      });
                    },
                    icon: const Icon(Icons.search)),
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

            /// bool var for open keyboard
            openKeyboard
                ?

                /// Just Add VesipalagaiVadivam Any where
                VesaipalagaiVadivam(
                    /// Pass TextController to theydal its "Required" Properties
                    theydal: texts,

                    /// uyirColor Is Optional Properties
                    uyirColor: Colors.amber,

                    /// uyirMeiColor Is Optional Properties
                    uyirMeiColor: Colors.teal,

                    /// backgroundColor Is Optional Properties
                    backgroundColor: Colors.black,

                    /// fontSize Is Optional Properties
                    eluthualvul: 14,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
