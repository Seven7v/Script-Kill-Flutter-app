import 'dart:io';

void main(List<String> args) {
  // 生成器
  for (var item in ReadFile()) {
    print(item);
  }
}

Iterable count(n) sync* {
  for (int i = 0; i < n; i++) {
    yield i; // 相当于遇到yield 就挂起，下次访问数据时再向下走一次。
  }
}

// 生成器的写法，需要在后面加上sync*
Iterable<File> ReadFile() sync* {
  final directory = Directory('F:/v3');
  // 代表会深层遍历
  final files = directory.listSync(recursive: true);
  for (var file in files) {
    if (file is File) {
      yield file;
    }
  }
}
