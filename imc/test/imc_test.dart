import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(resultIMC("Teste", 1.75, 65.0), "Teste está com o peso normal");
  });
}
