void main(List<String> args) {
  var set = new Set(); // 和JS 一样，不可以有重复
  set.add(111);
  set.add(222);
  set.add(111);
  print(set.toList());
  // 去重 传入数组不可以在new Set()中传参，需要new 一个空的，在调用addAll方法填入
  List arr = [1, 1, 2, 3, 4, 3, 2, 34, 5, 9, 5];
  set.addAll(arr);
  print(set);
}
