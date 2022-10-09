part of 'extensions.dart';

extension StringExtension on String {
  String toFirstUpperCase() {
    if (isEmpty) return '';
    if (length == 1) return toUpperCase();
    final List<String> chars = characters;

    final String first = chars.first;
    final String remainingChars = chars.join().replaceFirst(first, '');

    return '${first.toUpperCase()}$remainingChars';
  }

  List<String> get characters => split('');
}

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;

  bool get isNotNullOrEmpty => this?.isNotEmpty ?? false;
}
