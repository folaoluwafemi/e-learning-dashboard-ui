part of 'extensions.dart';


extension ListExtension<T> on List<T> {
  List<String> toEachString() => map<String>((e) => e.toString()).toList();

  bool containsAll(Iterable<T> it) {
    for (T item in it) {
      if (!contains(item)) return false;
    }
    return true;
  }

  void addWhereAbsent(Iterable<T> it) {
    for (T item in it) {
      if (!contains(item)) {
        add(item);
      }
    }
  }

  T? get lastOrNull {
    try {
      return last;
    } catch (e) {
      return null;
    }
  }
}