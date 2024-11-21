import 'package:PackageDart/my_package.dart';
import 'package:test/test.dart';

void main() {
  test('greet returns a greeting message', () {
    expect(greet('World'), 'Hello, World!');
  });
}