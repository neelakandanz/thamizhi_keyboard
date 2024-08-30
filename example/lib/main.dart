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
      title:
          'Vesaipalagai Demo', // The title of the app displayed in the app switcher
      theme: ThemeData(
        primarySwatch:
            Colors.blue, // Defines the primary color scheme for the app
      ),
      home: const MyHomePage(), // The home page of the app
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController texts =
      TextEditingController(); // Controller to manage the text input

  bool openKeyboard =
      false; // Flag to manage the visibility of the custom keyboard

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thamizhi Keyboard"), // Title of the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center aligns children vertically
          children: <Widget>[
            TextField(
              controller:
                  texts, // Controller to manage the text in the TextField

              /// Handle the opening of the custom keyboard
              onTap: () {
                debugPrint(
                    "open Keyboard"); // Debug message indicating keyboard is opening
                setState(() {
                  openKeyboard =
                      true; // Set the flag to true to show the custom keyboard
                });
              },

              /// ReadOnly disables the default keyboard; Uncomment to disable default keyboard
              // readOnly: true,

              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: () {
                      debugPrint(
                          "close Keyboard"); // Debug message indicating keyboard is closing
                      setState(() {
                        openKeyboard =
                            false; // Set the flag to false to hide the custom keyboard
                      });
                    },
                    icon:
                        const Icon(Icons.search)), // Icon to close the keyboard
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 5,
                    color:
                        Colors.greenAccent, // Color of the border when enabled
                  ),
                  borderRadius: BorderRadius.circular(
                      50.0), // Border radius for rounded corners
                ),
              ),
            ),
            const SizedBox(
              height: 23, // Space between the TextField and the custom keyboard
            ),

            /// Conditionally display the custom keyboard
            openKeyboard
                ? VesaipalagaiVadivam(
                    theydal:
                        texts, // Required property: Pass the TextEditingController
                    uyirColor:
                        Colors.amber, // Optional property: Color for vowels
                    uyirMeiColor:
                        Colors.teal, // Optional property: Color for consonants
                    // backgroundColor: Color.fromARGB(255, 233, 219, 219), // Optional property: Background color for the keyboard
                    eluthualvul:
                        14, // Optional property: Font size for the keyboard text
                  )
                : const SizedBox(), // Placeholder when the keyboard is not visible
          ],
        ),
      ),
    );
  }
}
