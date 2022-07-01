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

    switch (voto) {
      case 17:
        {
          qtdvotos = Candidatos["Bolsonaro"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Bolsonaro"] = qtdvotos;
          break;
        }
      case 13:
        {
          qtdvotos = Candidatos["Dilmãe"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Dilmãe"] = qtdvotos;
          break;
        }
      case 45:
        {
          qtdvotos = Candidatos["Temer"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Temer"] = qtdvotos;
          break;
        }

      default:
    }
    contador++;
  }
  print('votação finalizada');
  print('Resultado dos votos: $Candidatos');
}
