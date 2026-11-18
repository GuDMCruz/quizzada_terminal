import 'package:quizzada_terminal/dificuldade.dart';

class Pergunta {
  String texto;
  List<String> alternativas;
  int indiceCorreto;
  Dificuldade dificuldade;

  Pergunta({
    required this.texto,
    required this.alternativas,
    required this.indiceCorreto,
    required this.dificuldade,
  });

  factory Pergunta.fromMap(Map<String, dynamic> mapa) {
    return Pergunta(
      texto: mapa['texto'] as String,
      alternativas: List<String>.from(mapa['alternativas']),
      indiceCorreto: mapa['indiceCorreto'] as int,
      dificuldade: Dificuldade.values.byName(mapa['dificuldade'] as String),
    );
  }
}
