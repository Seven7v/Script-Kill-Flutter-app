// 泛型
void main(List<String> args) {
  // List<String> list = ['23', '32'];
  print(getValue<String>('EW'));
  print(getValue<int>(2));
  Document<String> docs = Document({'title': 'title', 'content': 'content'});
  docs.setDocumet('editor', 'lisi');
  print(docs.getDocument('editor'));

  Document<List<String>> docs2 = Document({
    'title': ['title']
  });
  docs2.setDocumet('editor', ['lisi']);
  print(docs2.getDocument('editor'));

  // var mark = Markdown(docs);
  // mark.init();
  Markdown<Document<String>> mark = Markdown(docs);
  print(mark.init());
}

T getValue<T>(T value) {
  return value;
}

class Document<T> {
  Map<String, T> doc = {};
  Document(this.doc);
  setDocumet(String key, T value) {
    doc[key] = value;
  }

  T? getDocument(String key) {
    return doc[key];
  }
}

// 约定传过来的参数是什么类型的,确保可以使用这类型中的方法
class Markdown<T extends Document<String>> {
  T docs;
  Markdown(this.docs);
  init() {
    return docs.getDocument('title');
  }
}

abstract class Catch<T> {
  T? getCatch(String key);
  setCatch(String key, T value);
}

class MameryCatch<T> extends Catch<T> {
  @override
  T? getCatch(String key) {
    return null;
  }

  @override
  setCatch(String key, T value) {
    print('set');
  }
}
