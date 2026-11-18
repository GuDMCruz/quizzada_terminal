import 'package:quizzada_terminal/jogador.dart';
import 'package:quizzada_terminal/pergunta.dart';

class Partida {
  Jogador jogador;
  List<Pergunta> perguntas;

  Partida({required this.perguntas, required this.jogador});
}
