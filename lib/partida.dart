import 'package:quizzada_terminal/jogador.dart';
import 'package:quizzada_terminal/pergunta.dart';
import 'package:quizzada_terminal/resposta_invalida_exception.dart';

class Partida {
  Jogador jogador;
  List<Pergunta> perguntas;
  final letras = ['A) ', 'B) ', 'C) ', 'D) '];
  int acertos = 0;

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

  String valida(String res, int i) {
    int resposta = -1;

    res = res.trim().toUpperCase();

    if (res == '') {
      throw RespostaInvalidaException(mensagem: 'Aviso: Digite uma letra.');
    }

    if (res != 'A' && res != 'B' && res != 'C' && res != 'D') {
      throw RespostaInvalidaException(
        mensagem: 'Aviso: "$res" não é uma alternativa. Use A, B, C, D.',
      );
    }

    if (res == 'A') {
      resposta = 0;
    } else if (res == 'B') {
      resposta = 1;
    } else if (res == 'C') {
      resposta = 2;
    } else if (res == 'D') {
      resposta = 3;
    }

    if (resposta == perguntas[i].indiceCorreto) {
      jogador.adicionarPontos(perguntas[i].dificuldade.pontos);
      acertos++;
      return 'Acertou! +${perguntas[i].dificuldade.pontos}';
    }

    return 'Errou! A resposta correta era: ${letras[perguntas[i].indiceCorreto]}';
  }

  String mostraResultado() {
    String resultado = 'Nome do jogador: ${jogador.nome}\n';
    resultado += 'Pontos obtidos: ${jogador.pontos}\n';
    resultado +=
        'Pontos totais: ${perguntas.fold<int>(0, (total, pergunta) {
          return total + pergunta.dificuldade.pontos;
        })}\n';
    resultado += '$acertos/${perguntas.length} perguntas acertadas!';

    return resultado;
  }
}
