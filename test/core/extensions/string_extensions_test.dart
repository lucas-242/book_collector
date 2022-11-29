import 'package:book_collector/core/extensions/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return true', () {
    String? test;
    final result = test.isNullOrEmpty();
    expect(result, equals(true));
  });
}
