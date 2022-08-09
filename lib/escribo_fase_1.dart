import 'dart:convert';
import 'dart:io';

int somatorioDivisores(int numero) {
  var divisor = 1;
  var somatorioDivisores = 0;

  while (divisor < numero) {
    if (divisor % 3 == 0 || divisor % 5 == 0) {
      somatorioDivisores += divisor;
    }
    divisor++;
  }

  return somatorioDivisores;
}

int entradaDados() {
  try {
    stdout.write("\nDigite um numero: ");
    var number = int.parse(stdin.readLineSync(encoding: utf8)!);

    return number;
  } on FormatException catch (e) {
    print("\n Um número precisa ser digitado!!! \n");

    print(e);

    throw FormatException;
  }
}

void home() {
  var value = entradaDados();

  var newValue = somatorioDivisores(value);

  print(
    "\nO somatório dos valores até $value divisiveis por 3 e 5 é: $newValue\n",
  );
}
