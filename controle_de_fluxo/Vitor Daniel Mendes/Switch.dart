import 'dart:io';

void main() {
  // while (contador <= 50) {
  //   print('Contando.... $contador');
  //   contador++;
  // }
  int numeleitores = 10;
  int contador = 0;
  int? qtdvotos = 0; //17            13          45
  Map<String, int> Candidatos = {"Bolsonaro": 0, "Dilma": 0, "Temer": 0};

  while (contador < numeleitores) {
    int voto;
    print('Votação [17 - Bolsonaro | 13 - Dilma | Temer = 45 | 0 - Sair]');
    voto = int.parse(stdin.readLineSync()!);

    //encerrar votação
    if (voto == 0) {
      break;
    }

    switch (voto) {
      case 17:
        {
          qtdvotos = Candidatos["Bolsonaro"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Bolsonaro"] = qtdvotos;
          contador++;
          break;
        }
      case 13:
        {
          qtdvotos = Candidatos["Dilmãe"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Dilmãe"] = qtdvotos;
          contador++;
          break;
        }
      case 45:
        {
          qtdvotos = Candidatos["Temer"];
          qtdvotos = qtdvotos! + 1;
          Candidatos["Temer"] = qtdvotos;
          contador++;
          break;
        }

      default:
        {
          print('Voto inválido');
          break;
        }
    }
  }
  print('votação finalizada');
  print('Resultado dos votos: $Candidatos');
}
