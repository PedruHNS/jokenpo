import 'dart:io';

String input({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

class Gameplay {
  String player1;
  String player2;

  Gameplay({required this.player1, required this.player2});

  void pedra() {
    if (player1 == "papel") {
      print("$player1 + $player2 = papel");
    }
    if (player1 == "tesoura") {
      print("$player1 + $player2 = pedra");
    }
    if (player1 == "pedra") {
      print("$player1 + $player2 = empate");
    } else {
      print("escolha errada");
    }
  }

  void papel() {
    if (player1 == "papel") {
      print("$player1 + $player2 = empate");
    }
    if (player1 == "tesoura") {
      print("$player1 + $player2 = tesoura");
    }
    if (player1 == "pedra") {
      print("$player1 + $player2 = papel");
    } else {
      print("escolha errada");
    }
  }

  void tesoura() {
    if (player1 == "papel") {
      print("$player1 + $player2  = tesoura");
    }
    if (player1 == "tesoura") {
      print("$player1 + $player2 = empate");
    }
    if (player1 == "pedra") {
      print("$player1 + $player2 = pedra");
    } else {
      print("escolha errada");
    }
  }

  void check() {
    switch (player2) {
      case "pedra":
        pedra();
        break;
      case "papel":
        papel();
        break;
      case "tesoura":
        tesoura();
        break;
      default:
        print("tente novamente");
        break;
    }
  }
}
