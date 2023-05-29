void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMAdura = funcEstaMAdura(diasDesdeColheita);

  // print(funcEstaMAdura(10));
  // mostrarMAdura("Uva", 40, cor: "Roxa");

  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);
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
