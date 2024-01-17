void main(List<String> args) {
  int num = sum(2, 10, 15);
  int num1 = sum(2, 10);
  console(num);
  console(num1);
  String score = printResult(name: 'zhangshan', score: 68);
  console(score);
  var fn = a();
  fn();
  fn();
  fn();
  fn();
  fn();
}

// void代表函数没有返回值，前面的内容用来后面确定函数返回值的类型
void console(value) {
  print(value);
}

// 被中括号包起来的 参数时可选参数，可以为他赋值，是默认值[int num3 = 0]
// 可选参数
// String printResult(String name, dynamic score, [dynamic sex]) {
//   // zhangshan ----------- 23 -----------null 不传sex 结果是null
//   return '$name ----------- $score -----------$sex';
// }

// 参数默认值
int sum(int num1, int num2, [int num3 = 0]) {
  return num1 + num2 + num3;
}

// 命名参数
String printResult(
    {String name = 'any', dynamic score = 0, dynamic sex = '男'}) {
  // zhangshan ----------- 23 -----------null 不传sex 结果是null
  return '$name ----------- $score -----------$sex';
}

// 箭头函数
// 和js不一样，这里的箭头函数不适合写入大量代码，只用作返回简单的内容。
// 一句话，省略return
int add(int num1, int num2, [int num3 = 0]) => num1 + num2 + num3;

// 闭包
// 函数的闭包与js相同，就是函数可以访问其他函数作用域中的数据
// 这里在 main函数可以通过 使用 var f1 = a(); f1(); 获取到a函数中的n变量，所以n的值不会被销毁 会一直被保留
Function() a() {
  int n = 99;
  return () {
    n = n + 1;
    print(n);
  };
}
