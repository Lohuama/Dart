import 'package:dart/dart.dart' as dart;

void main() {
  int idade = 25;
  const double altura = 1.69;
  bool geek = (idade != altura);
  final String nome = 'Lôh';
  List<dynamic> loh = [idade, altura, geek, nome];
  String frase = "Eu sou,${loh} ";
  bool maiorDeIdade;
  int energia = 100;
  List<String> nomes = ["Lohuama", "Helder", "Mariana", "Fernanda", "João"];

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for(int i = 1; i <= 5; i+=2){
    print(i);
  }

  while (energia > 0) {
    energia -= 10;
    print(energia);
  }
}
