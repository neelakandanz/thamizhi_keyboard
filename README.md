# thamizhi_keyboard

thamizhi_keyboard is a feature-rich keyboard for Android, iOS, macOS, web, Linux and Windows.

## Description

 Tamil keyboard is a tool used to type in the Tamil language. It has a set of keys that correspond to the Tamil alphabet and allows users to type words and sentences in Tamil script. The keyboard can be used on computers, smartphones, and other electronic devices. It is a useful tool for those who want to communicate in Tamil or write in the language for personal or professional purposes.


## Features

## Mobile Screen Size

<img src="https://github.com/neelakandanz/thamizhi_keyboard/blob/main/out/Screen2.PNG?raw=true" />

## Desktop or Web Screen Size

<img src="https://github.com/neelakandanz/thamizhi_keyboard/blob/main/out/Screen1.PNG?raw=true" />


## Alphabetical Keys

<img src="https://github.com/neelakandanz/thamizhi_keyboard/blob/main/out/Screen4.PNG?raw=true" />



## Usage

Refer this Page for long examples `/example` folder.

```dart
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

```

## Contributing to this plugin 

If you would like to contribute to the package, check out our contribution guide.

