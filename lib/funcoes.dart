import 'dart:io';

String input({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

class Player1 {
  String nome;
  String escolha;

  Player1({required this.nome, required this.escolha});

  String verificar() {
    if (escolha == "pedra" || escolha == "papel" || escolha == "tesoura") {
      return escolha;
    } else {
      return "não entendi";
    }
  }
}

class Player2 extends Player1 {
  Player2({required nome, required escolha})
      : super(nome: nome, escolha: escolha);
}

String pedra({required op1}) {
  if (op1 == "papel") {
    return "papel";
  }
  if (op1 == "tesoura") {
    return "pedra";
  }
  if (op1 == "pedra") {
    return "empate";
  } 
    return "escolha errada";
}

String papel({required op1}) {
  if (op1 == "papel") {
    return "empate";
  }
  if (op1 == "tesoura") {
    return "tesoura";
  }
  if (op1 == "pedra") {
    return "papel";
  }
    return "escolha errada";
}

String tesoura({required op1}) {
  if (op1 == "papel") {
    return "tesoura";
  }
  if (op1 == "tesoura") {
    return "empate";
  }
  if (op1 == "pedra") {
    return "pedra";
  }
  return "escolha errada";
}

String gameplay({required String escolha1, required String escolha2}) {
  switch (escolha2) {
    case "pedra":
      return pedra(op1: escolha1);
    case "papel":
      return papel(op1: escolha1);
    case "tesoura":
      return tesoura(op1: escolha1);
    default:
      return "tente novamente";
  }
}

void choices() {
  print("------------registe o jogador 1------------");
  Player1 play1 = Player1(
    nome: input(mensagem: "nome do jogador").toLowerCase(),
    escolha: input(mensagem: "pedra, papel ou tesoura").toLowerCase(),
  );
  print("-------------------------------------------");

  print("-----------registe o jogador 2-------------");
  Player2 play2 = Player2(
    nome: input(mensagem: "nome do jogador").toLowerCase(),
    escolha: input(mensagem: "pedra,papel ou tesoura").toLowerCase(),
  );
  print("------------------------------------------");

  print("---------resultado-------------------------");
  print(gameplay(escolha1: play1.escolha, escolha2: play2.escolha));
}
