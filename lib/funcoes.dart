import 'dart:io';

String inputoutput({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

String pedra({required pl2}) {
  if (pl2 == "papel") {
    return "papel";
  } else if (pl2 == "tesoura") {
    return "pedra";
  } else {
    return "empate";
  }
}

String papel({required pl2}) {
  if (pl2 == "papel") {
    return "empate";
  } else if (pl2 == "tesoura") {
    return "tesoura";
  } else {
    return "papel";
  }
}

String tesoura({required pl2}) {
  if (pl2 == "papel") {
    return "tesoura";
  } else if (pl2 == "tesoura") {
    return "empate";
  } else {
    return "pedra";
  }
}

String resultado({required String p1, required String p2}) {
  switch (p1) {
    case "pedra":
      return pedra(pl2: p2);

    case "papel":
      return papel(pl2: p2);

    case "tesoura":
      return tesoura(pl2: p2);
    
    default:
      return "erro";
  }
}
