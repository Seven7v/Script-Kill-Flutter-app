import 'dart:io';

void main(List<String> args) async {
  // req().then((value) {
  //   print(value);
  //   req2(value).then((v2) {
  //     print(v2);
  //   });
  // });
  // req().then((value) {
  //   print(value);
  //   return req2(value);
  // }).then((value) {
  //   print(value);
  // });
  String value = await req();
  String value2 = await req2(value);
  print(value);
  print(value2);
  Future.wait([req(), req2(23)]).then((value) {
    print(value);
    // 等待传入的异步都执行完毕再操作
  });
}

Future req() {
  return Future(() {
    sleep(Duration(seconds: 2));
    return '模拟请求';
  });
}

Future req2(value) {
  return Future(() {
    sleep(Duration(seconds: 2));
    return '第二个请求';
  });
}
