import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  print('start');
  ReceivePort port = ReceivePort();
  var taskres = await Isolate.spawn(task, port.sendPort);
  port.listen((message) {
    print(message);
    port.close();
    taskres.kill();
  });
  print('end');
}

void task(SendPort port) {
  sleep(Duration(seconds: 2));
  return port.send('task finash');
}
