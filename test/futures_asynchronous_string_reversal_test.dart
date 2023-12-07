import 'package:futures_asynchronous_string_reversal/futures_asynchronous_string_reversal.dart';
import 'package:test/test.dart';

void main() {
  test('reverseStringsAsync reverses each string asynchronously', () async {
    var strings = ['hello', 'world'];
    var reversedStrings = await reverseStringsAsync(strings);
    expect(reversedStrings, equals(['olleh', 'dlrow']));
  });
}
