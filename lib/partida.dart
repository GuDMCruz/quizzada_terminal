import 'package:quizzada_terminal/jogador.dart';
import 'package:quizzada_terminal/pergunta.dart';

class Partida {
  Jogador jogador;
  List<Pergunta> perguntas;
  final letras = ['A) ', 'B) ', 'C) ', 'D) '];

  Partida({required this.perguntas, required this.jogador});

  String mostraTexto(int i) {
    String textoRetorno =
        'Pergunta ${i + 1}/${perguntas.length} (${perguntas[i].dificuldade.formatados}, ${perguntas[i].dificuldade.pontos} pts)\n';

    textoRetorno += perguntas[i].texto;

    for (int j = 0; j < 4; j++) {
      textoRetorno += '\n${letras[j]}${perguntas[i].alternativas[j]}';
    }

    return textoRetorno;
  }
}
