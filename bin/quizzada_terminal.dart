import 'package:quizzada_terminal/jogador.dart';
import 'package:quizzada_terminal/partida.dart';
import 'package:quizzada_terminal/pergunta.dart';
import 'dart:io';

void main() {
  List<Map<String, dynamic>> dados = [
    {
      'texto': 'Qual bandeira tem um dragão?',
      'alternativas': ['Japão', 'Butão', 'Suiça', 'Canadá'],
      'indiceCorreto': 1,
      'dificuldade': 'facil',
    },
    {
      'texto': 'Qual bandeira tem uma folha de bordo?',
      'alternativas': ['Canadá', 'Irlanda', 'Noruega', 'Chile'],
      'indiceCorreto': 0,
      'dificuldade': 'facil',
    },
    {
      'texto': 'Qual bandeira tem uma águia comendo uma cobra?',
      'alternativas': ['Peru', 'Egito', 'México', 'Alemanha'],
      'indiceCorreto': 2,
      'dificuldade': 'media',
    },
    {
      'texto': 'Qual bandeira tem um AK-47?',
      'alternativas': ['Angola', 'Moçambique', 'Líbia', 'Iraque'],
      'indiceCorreto': 1,
      'dificuldade': 'dificil',
    },
    {
      'texto': 'Qual bandeira tem um castelo?',
      'alternativas': ['Suécia', 'Dinamarca', 'Malta', 'Espanha'],
      'indiceCorreto': 3,
      'dificuldade': 'dificil',
    },
  ];
  final perguntas = dados.map(Pergunta.fromMap).toList();
  String? nome;
  Jogador jogador;
  Partida partida;

  while(nome == null || nome == ''){
    stdout.write('Seu nome: ');
    nome = stdin.readLineSync()?.trim();
  }

  jogador = Jogador(nome: nome);
  partida = Partida(perguntas: perguntas, jogador: jogador);


  print('Bem-vindo ao Quizzada!');
}
