import 'dart:io';

void main() {
  // while (contador <= 50) {
  //   print('Contando.... $contador');
  //   contador++;
  // }
  int numeleitores = 10;
  int contador = 1;
  int? qtdvotos = 0; //17            13          45
  Map<String, int> Candidatos = {"Bolsonaro": 0, "Dilmãe": 0, "Temer": 0};

  while (contador <= numeleitores) {
    int voto;
    print('Votação [17 - Bolsonaro | 13 - Dilmãe | Temer = 45]');
    voto = int.parse(stdin.readLineSync()!);

    if (voto == 17) {
      qtdvotos = Candidatos["Bolsonaro"];
      qtdvotos = qtdvotos! + 1;
      Candidatos["Bolsonaro"] = qtdvotos;
    } else if (voto == 13) {
      qtdvotos = Candidatos["Dilmãe"];
      qtdvotos = qtdvotos! + 1;
      Candidatos["Dilmãe"] = qtdvotos;
    } else {
      qtdvotos = Candidatos["Temer"];
      qtdvotos = qtdvotos! + 1;
      Candidatos["Temer"] = qtdvotos;
    }
    contador++;
  }
  print('votação finalizada');
  print('Resultado dos votos: $Candidatos');
}
