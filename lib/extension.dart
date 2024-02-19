void main(List<String> args) {
  String name = 'seven';
  print(name.cap());
}

extension StringExtension on String {
  String cap() {
    if (this.isEmpty) {
      return '不能为空';
    }
    return '${this.substring(0, 1).toUpperCase()}${this.substring(1)}';
  }
}
