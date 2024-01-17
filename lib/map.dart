void main(List<String> args) {
  // 创建Map类型的数据就是用Map 可以在后面根据数据的类型定义key和value的类型，
  // dynamic 是动态的意思
  Map<String, dynamic> obj = {"name": "zhangshan", "age": 1};

  var keys = obj.keys;
  var values = obj.values;
  var items = obj.entries;
  print(items);
  for (var element in items) {
    print(element.value); // 可以直接调用读取，不可以赋值
  }
  // Map赋值
  // 直接赋值
  obj['addr'] = "chengdu";
  // 添加多个
  obj.addAll({"home": "jilin", "id": 'x12289021'});
  // 通过addEntries 添加
  obj.addEntries([MapEntry("mom", "lisi"), MapEntry("father", "wangwu")]);
  // 删除
  obj.remove("father");
  obj.removeWhere((key, value) => value == 'lisi');

  print(obj.containsKey('name'));
  print(obj.containsValue('name'));
  print(obj);

  // 循环
  // foreach
  obj.forEach((key, value) {
    print(key);
  });
  Map obj2 = obj.map((key, value) {
    print('$key is $value');
    return MapEntry(key, '$key is $value');
  });
  print(obj2);
}
