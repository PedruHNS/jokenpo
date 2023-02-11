import 'package:jokenpo/funcoes.dart';

void main() {
  String player1 = inputoutput(
    mensagem: "player 1: digite pedra, papel ou tesoura",
  );
  String player2 = inputoutput(
    mensagem: "player 2: digite pedra, papel ou tesoura",
  );

  String jokenpo = resultado(p1: player1, p2: player2);
  print(jokenpo);
}
