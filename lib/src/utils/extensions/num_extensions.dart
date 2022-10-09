part of 'extensions.dart';

extension NumExtension on num {
  ///returns value * (percentage/100)
  double percent(num percentage) => (this * (percentage / 100)).toDouble();

  bool get isFiveMultiple => this % 5 == 0;

  double get negate => this * -1;

  SizedBox get boxHeight => SizedBox(height: toDouble());

  SizedBox get boxWidth => SizedBox(width: toDouble());
}
