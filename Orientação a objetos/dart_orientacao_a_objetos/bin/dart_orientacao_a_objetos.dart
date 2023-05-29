void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMAdura;

  if (diasDesdeColheita >= 30) {
    isMAdura = true;
  } else {
    isMAdura = false;
  }

  Fruta melancia = Fruta('Melancia', 1500.0, 'Verde', 'Doce', 40);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca1.printAlimento();
  macadamia1.printAlimento();
  banana1.printAlimento();
  limao1.printAlimento();
  melancia.printAlimento();

  mandioca1.cozinhar();
  limao1.fazerSuco();
}

bool funcEstaMAdura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMAdura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print('${nome} está madura');
  } else {
    print('${nome} não está madura');
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasDaltam = dias - diasParaMadura;
  return quantosDiasDaltam;
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este $nome pesa $peso gramas e é $cor.');
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMAdura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMAdura})
      : super(nome, peso, cor);

  void estaMAdura(int diasParaMadura) {
    isMAdura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida hà $diasDesdeColheita dias, e precisa de $diasParaMadura dias para poder comer. Ela está madura? $isMAdura.");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor); //super = elementos q estao superior

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void assar(){

  }

  @override
  void separarIgredientes(){

  }

  @override
  void sepasepararIgredientes(){
    
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não tem Refrigerante de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}

abstract class Bolo {
  void separarIgredientes();
  void fazerMassa();
  void assar();
}
