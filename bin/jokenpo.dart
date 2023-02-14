import 'package:jokenpo/funcoes.dart';

void main() {
  Gameplay game = Gameplay(
    player1:
        input(mensagem: "player 1 = pedra, papel ou tesoura").toLowerCase(),
    player2:
        input(mensagem: "player 2 = pedra, papel ou tesoura").toLowerCase(),
  );

 game.check();

}
