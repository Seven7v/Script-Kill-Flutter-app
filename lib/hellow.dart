void main(List<String> args) {
  print('hellow new flutter');

  // STRING

  // String str1 = 'hellow';
  // var num1 = 2;
  // const envPort = 8000;
  // final envDomain;
  // envDomain = 'net';
  // var str2 = '''
  //             这里是 三个引号 模板字符串可以使用模板字符串方式使用---
  //             $envDomain -- 模板里的内容
  //             ''';
  // var str4 = "$str2 $str1";
  // print(str2 == str4);
  // print(str2);
  // print(str4);

  // NUMBER

  // int numb1 = 100;
  // double numb2 = 200.5;
  // print(numb1 + numb2);
  // print(numb1);

  // BOOLEAN

  // bool bol = true;
  // print(bol);

  // LIST

  // List list1 = [
  //   {name: 'xiaotao', age: 23}
  // ];
  // List list = ['xiaotao', 23, false];
  // List l2 = <String>['xiaotao', 'xiaoming', 'xiaoli'];
  // // 也可以通过 <String>来规定数组里元素的数据类型
  // List l3 = List<String>.filled(2, '1');
  // l2.add('xiaohei');
  // // l3.add(2);  会报错，不可以再添加，不可以改变长度
  // // l3.length = 0; 会报错。不可以改变长度
  // l3[0] = 'hsu'; // 可以改变数组内容
  // print(l2);
  // print(l3);
  // print(list);

  // MAP OBJ

  var obj = {"name": "xiaotao", "age": 23};
  Map obj2 = new Map();
  obj2["class"] = "class one";
  print(obj2);
  print(obj["name"]);
}
