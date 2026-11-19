class Jogador {
  String nome;
  int pontos = 0;

  Jogador({required this.nome});

  void adicionarPontos(int pontos) {
    this.pontos += pontos;
  }
}
