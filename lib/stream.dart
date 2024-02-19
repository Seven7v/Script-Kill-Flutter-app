import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  var doc = File('F:/v3/Script-Kill-Flutter-app/Flutter Study.md');
  Stream document = doc.openRead();
  var lines = document.transform(utf8.decoder).transform(LineSplitter());
  await for (var item in lines) {
    print(item);
  }
}

Stream count(n) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield i; // 相当于遇到yield 就挂起，下次访问数据时再向下走一次。
  }
}



// // 生成器的写法，需要在后面加上sync*
// Stream<File> ReadFile() async* {
//   final directory = Directory('F:/v3');
//   // 代表会深层遍历
//   final files = directory.listSync(recursive: true);
//   for (var file in files) {
//     if (file is File) {
//       await Future.delayed(Duration(seconds: 1));
//       yield file;
//     }
//   }
// }
