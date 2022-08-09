import 'package:escribo_fase_1/escribo_fase_1.dart';
import 'package:test/test.dart';

void main() {
  test('exemplo1', () {
    expect(somatorioDivisores(10), 23);
  });

  test('exemplo2', () {
    expect(somatorioDivisores(11), 33);
  });
}
