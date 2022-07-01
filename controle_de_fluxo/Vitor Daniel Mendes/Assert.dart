void main() {
  Carro car = Carro(1998, 'Preto');
}

class Carro {
  Carro(this.age, this.cor) : assert(age >= 2001, 'Carro muito antigo');
  int age;
  String cor;
}
