import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
         Icon(Icons.create),
         Text("タイトル"),
       ]),
      ),
      body: Column(children: [
         const Center(child: Icon(FontAwesomeIcons.gift, color: Colors.teal)),
         const Text("HelloWorld"),
         const Text("ハローワールド"),
         Text(
             '$_counter',
             style: Theme.of(context).textTheme.headlineMedium,
          ),
          if (_counter % 2 == 0)
             const Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
         TextButton(
           onPressed: () => {print("ボタンが押されたよ")},
           child: const Text("テキストボタン"),
         ),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: const [
               Icon(
                 Icons.favorite,
                 color: Colors.pink,
                 size: 24.0,
               ),
               Icon(
                 Icons.audiotrack,
                 color: Colors.green,
                 size: 30.0,
               ),
               Icon(
                 Icons.beach_access,
                 color: Colors.blue,
                 size: 36.0,
               ),
             ]),
      ]),
      floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}
