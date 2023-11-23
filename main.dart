import 'dart:io';

int somatorioDivisiveis(int numero) {
  int somatorio = 0;

  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }

  return somatorio;
}

void main() {
  stdout.write("Digite um número para verificação: ");
  String input = stdin.readLineSync()!;

  try {
    int numero = int.parse(input);
    int resultado = somatorioDivisiveis(numero);
    print(
        "A soma dos números divisiveis por 3 ou 5 até o número $numero é: $resultado");
  } catch (e) {
    print("insira um número válido.");
  }
}
