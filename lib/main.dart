import 'package:flutter/material.dart';
import 'test_page1.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher_string.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';

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


//
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestPage1());
  }
}

// AnimationBuilder
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation _animation;

//   // 再生
//   _forward() async {
//     setState(() {
//       _animationController.forward();
//     });
//   }

//   // 停止
//   _stop() async {
//     setState(() {
//       _animationController.stop();
//     });
//   }

//   // 逆再生
//   _reverse() async {
//     setState(() {
//       _animationController.reverse();
//     });
//   }

//   // 生成
//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));
//     _animation = _animationController.drive(Tween(begin: 0.0, end: 2.0 * pi));
//   }

//   // 破棄
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _animation,
//           builder: (context, _) {
//             return Transform.rotate(
//                 angle: _animation.value,
//                 child: const Icon(Icons.cached, size: 100));
//           },
//         ),
//       ),
//       // 再生、停止、逆再生のボタン
//       floatingActionButton:
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//         FloatingActionButton(
//             onPressed: _forward, child: const Icon(Icons.arrow_forward)),
//         FloatingActionButton(onPressed: _stop, child: const Icon(Icons.pause)),
//         FloatingActionButton(
//             onPressed: _reverse, child: const Icon(Icons.arrow_back)),
//       ]),
//     );
//   }
// }

// Tween/Animation
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animationDouble;
//   final Tween<double> _tweenDouble = Tween(begin: 0.0, end: 200.0);
//   late Animation<Color?> _animationColor;
//   final ColorTween _tweenColor =
//       ColorTween(begin: Colors.green, end: Colors.blue);

//   // 再生
//   _forward() async {
//     setState(() {
//       _animationController.forward();
//     });
//   }

//   // 停止
//   _stop() async {
//     setState(() {
//       _animationController.stop();
//     });
//   }

//   // 逆再生
//   _reverse() async {
//     setState(() {
//       _animationController.reverse();
//     });
//   }

//   // 生成
//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 3));
//     // TweenとAnimationControllerからAnimationを作る(サイズ)
//     _animationDouble = _tweenDouble.animate(_animationController);
//     _animationDouble.addListener(() {
//       setState(() {});
//     });
//     // TweenとAnimationControllerからAnimationを作る(色)
//     _animationColor = _tweenColor.animate(_animationController);
//     _animationColor.addListener(() {
//       setState(() {});
//     });
//   }

//   // 破棄
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("AnimationController:${_animationController.value}"),
//             Text("AnimationDouble:${_animationDouble.value}"),
//             Text("AnimationColor:${_animationColor.value}"),
//             SizeTransition(
//               sizeFactor: _animationController,
//               child: Center(
//                   child: SizedBox(
//                       width: _animationDouble.value,
//                       height: _animationDouble.value,
//                       child: Container(color: _animationColor.value))),
//             ),
//           ],
//         ),
//       ),
//       // 再生、停止、逆再生のボタン
//       floatingActionButton:
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//         FloatingActionButton(
//             onPressed: _forward, child: const Icon(Icons.arrow_forward)),
//         FloatingActionButton(onPressed: _stop, child: const Icon(Icons.pause)),
//         FloatingActionButton(
//             onPressed: _reverse, child: const Icon(Icons.arrow_back)),
//       ]),
//     );
//   }
// }

//AnimationControllerを使ったTransition系Widgetアニメーション
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late AnimationController _animationController;

//   // 再生
//   _forward() async {
//     setState(() {
//       _animationController.forward();
//     });
//   }

//   //停止
//   _stop() async {
//     setState(() {
//       _animationController.stop();
//     });
//   }

//   // 逆再生
//   _reverse() async {
//     setState(() {
//       _animationController.reverse();
//     });
//   }

//   // 生成
//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 3));
//   }

//   // 破棄
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SizeTransition(
//               sizeFactor: _animationController, // AnimationControllerを設定
//               child: Center(
//                   child: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Container(color: Colors.green))),
//             ),
//           ],
//         ),
//       ),
//       // 再生、停止、逆再生のボタン
//       floatingActionButton:
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//         FloatingActionButton(
//             onPressed: _forward, child: const Icon(Icons.arrow_forward)),
//         FloatingActionButton(onPressed: _stop, child: const Icon(Icons.pause)),
//         FloatingActionButton(
//             onPressed: _reverse, child: const Icon(Icons.arrow_back)),
//       ]),
//     );
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
  // bool _flag = false;
  // _click() async {
  //   setState(() {
  //     _flag = !_flag;
  //   });
  // }
  //AnimatedOpacity/AnimatedSize/AnimatedAlign
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           AnimatedOpacity(
  //               opacity: _flag ? 0.1 : 1.0,
  //               duration: const Duration(seconds: 3),
  //               child: Text(
  //                 "消える文字",
  //                 style: Theme.of(context).textTheme.headline4,
  //               )),
  //           AnimatedSize(
  //               duration: const Duration(seconds: 3),
  //               child: SizedBox(
  //                   width: _flag ? 50 : 200,
  //                   height: _flag ? 50 : 200,
  //                   child: Container(color: Colors.purple))),
  //           AnimatedAlign(
  //               duration: const Duration(seconds: 3),
  //               alignment: _flag ? Alignment.topLeft : Alignment.bottomRight,
  //               child: SizedBox(
  //                   width: 50,
  //                   height: 50,
  //                   child: Container(color: Colors.green)))
  //         ],
  //       ),
  //     ),
  //     floatingActionButton:
  //       FloatingActionButton(onPressed: _click, child: const Icon(Icons.add)),
  //   );
  // }

  //AnimatedContainer/AnimatedSwitcher
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           AnimatedContainer(
  //               duration: const Duration(seconds: 3),
  //               width: _flag ? 100 : 50,
  //               height: _flag ? 50 : 100,
  //               padding: _flag ? const EdgeInsets.all(0) : const EdgeInsets.all(30),
  //               margin: _flag ? const EdgeInsets.all(0) : const EdgeInsets.all(30),
  //               transform: _flag ? Matrix4.skewX(0.0) : Matrix4.skewX(0.3),
  //               color: _flag ? Colors.blue : Colors.grey),
  //           AnimatedSwitcher(
  //               duration: const Duration(seconds: 3),
  //               child: _flag
  //                   ? const Text("なにもない")
  //                   : const Icon(Icons.favorite, color: Colors.pink))
  //         ],
  //       ),
  //     ),
  //     floatingActionButton:
  //       FloatingActionButton(onPressed: _click, child: const Icon(Icons.add)),
  //   );
  // }
//   int _counter = 0;
//   bool _setValue = false;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(children: const [
//          Icon(Icons.create),
//          Text("タイトル"),
//        ]),
//       ),
//       body: Column(children: [
//          const Center(child: Icon(FontAwesomeIcons.gift, color: Colors.teal)),
//          const Text("HelloWorld"),
//          const Text("ハローワールド"),
//          Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.headlineMedium,
//           ),
//           if (_counter % 2 == 0)
//              const Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
//          TextButton(
//            onPressed: () => {print("ボタンが押されたよ")},
//            child: const Text("テキストボタン"),
//          ),
//          Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: const [
//                Icon(
//                  Icons.favorite,
//                  color: Colors.pink,
//                  size: 24.0,
//                ),
//                Icon(
//                  Icons.audiotrack,
//                  color: Colors.green,
//                  size: 30.0,
//                ),
//                Icon(
//                  Icons.beach_access,
//                  color: Colors.blue,
//                  size: 36.0,
//                ),
//              ]),
//              IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () async {
//                   String url = Uri.encodeFull(
//                       "https://www.google.co.jp/search?q=flutter");
//                   await canLaunchUrlString(url);
//                   await launchUrlString(url);
              
//               }),
//       ]),
//       floatingActionButton: FloatingActionButton(
//          onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)),
//       drawer: const Drawer(child: Center(child: Text("Drawer"))),
//       endDrawer: Drawer(
//         child: ListView(children: <Widget>[
//           SwitchListTile(
//           title:const  Text('記念日'),
//           value: _setValue,
//           //スイッチが変更された時のイベントを定義する
//           onChanged: (bool value) {
//             setState(() {
//               _setValue = value;
//             });
//             // 変更時のイベントが続く
//           },
//           secondary: const Icon(FontAwesomeIcons.gift, color: Colors.teal),
//           ),
//         ]),
//       ),
//     );
//   }
// }
