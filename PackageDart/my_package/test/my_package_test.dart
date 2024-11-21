import 'package:my_package/my_package.dart';
import 'package:test/test.dart';

void main() {
  // test('calculate', () {
  //   expect(calculate(), 42);
  // });
    test('greet returns a greeting message', () {
    expect(greet('World'), 'Hello, World!');
  });
}

