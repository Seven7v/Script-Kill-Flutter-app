void main(List<String> args) {
  // List
  // List 属性 length 长度 ,
  List menu = ['zhangsan', 'lisi', 'wangwu'];
  print(menu.length);
  // reversed 将List数据反转，返回的是一个可迭代的对象
  // 可以通过toList 将结果转换为数组
  print(menu.reversed.toList());
  print(menu.isEmpty);
  print(menu.isNotEmpty);
  // 添加 add
  menu.add('zhaoliu');
  // 类似拼接数组
  menu.addAll(['huqi', 'liuba']);
  print(menu);

  // 删除 remove removeAt
  menu.remove('liuba');
  menu.removeAt(4);
  print(menu);

  // 查找指定元素索引
  int rout = menu.indexOf('wangwu');
  print(rout);

  //插入 insert insertAll

  menu.insert(2, 'chenjiu');
  menu.insertAll(menu.length, ['sunshi']);
  print(menu);

  // 数组方法
  // foreach 循环
  // 下面的方法对原数组没有影响
  // map 映射
  // where 过滤
  // every
  // any

  // 里面的内容传入的不是箭头函数
  // menu.forEach((element) {
  //   print(element);
  // });
// map 不对原数组造成影响，返回的是一个可迭代的对象，可以通过toList方法转换数组
  // var newMenu = menu.map((element) {
  //   print(element);
  //   return element + 'map操作';
  // });
  // print(newMenu.toList());

  // where

  // var result = menu.where((element) => element.length > 7);
  // print(result);

  // every
  // every便利必须每一个元素都满足条件则返回true，如果有一个不满足则返回false
  // 对象里的属性名称一定要被双引号包起来

  List table = [
    {"id": 1, "check": true},
    {"id": 2, "check": true},
    {"id": 3, "check": true},
    {"id": 3, "check": false},
  ];
  bool isAllCheck = table.every((element) => element["check"]);
  bool hasNoCheck = table.any((element) => !element["check"]);
  print(isAllCheck);
  print(hasNoCheck);
}
