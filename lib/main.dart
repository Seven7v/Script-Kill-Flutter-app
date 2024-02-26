import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 基本使用
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   double get textScaleFactor => 1.5;
//   @override
//   Widget build(BuildContext context) {
//     return Text('''Text相关内容：
//         - textDirection // 决定 text开始绘画的方向TextDirection.ltr/rtl
//         - textAlign // 决定文字显示位置，textAlign.start/end 的位置是基于 textDirection来决定的
//         - maxLines // 最大行数
//         - overflow:TextOverflow.ellipsis // 超出用省略号显示（测试只针对当前行，如果当前行内容超过则显示省略号，不超就不会显示
//       ''',
//         textDirection: TextDirection.ltr,
//         textScaler: TextScaler.linear(textScaleFactor),
//         // textAlign.start 的位置是基于 textDirection来决定的
//         textAlign: TextAlign.start,
//         maxLines: 5,
//         overflow: TextOverflow.ellipsis,
//         style: style);
//   }
// }

// var style = TextStyle(
//     backgroundColor: const Color.fromARGB(255, 253, 245, 18),
//     color: const Color.fromARGB(209, 18, 4, 76),
//     fontSize: 8,
//     fontWeight: FontWeight.bold,
//     decoration: TextDecoration.underline,
//     letterSpacing: 5,
//     fontStyle: FontStyle.italic,
//     shadows: [shadow]);
// var shadow =
//     const Shadow(color: Colors.red, offset: Offset(2, 2), blurRadius: 2);
// 返回materialApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
              centerTitle: true,
            ),
            body: Container(
              width: 500,
              height: 500,
              decoration: decoration,
              // 可以指定对应位置padding
              padding: const EdgeInsets.fromLTRB(30, 30, 20, 10),
              // 指定统一padding
              // padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 10),
              // 控制盒子内容显示位置
              // alignment: Alignment.center,
              child: const Text('这里是盒子内部'),
            )));
  }
}

var decoration = BoxDecoration(
  color: Colors.blueGrey,
  border: Border.all(color: Colors.pink, width: 1),
  borderRadius: const BorderRadius.all(Radius.circular(10)),
  boxShadow: [boxShadow],
  //镜像渐变
  // gradient: const RadialGradient(
  //     colors: [Colors.blueGrey, Colors.pinkAccent], radius: 0.7)
  // 线性渐变
  gradient: const LinearGradient(colors: [Colors.blueGrey, Colors.pinkAccent]),
);
var boxShadow = const BoxShadow(
    color: Color.fromARGB(239, 233, 229, 229),
    offset: Offset(2, 2),
    blurRadius: 2);
