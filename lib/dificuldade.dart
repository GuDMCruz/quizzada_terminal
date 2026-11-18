enum Dificuldade {
  facil,
  media,
  dificil;

  int get pontos => switch (this) {
    Dificuldade.facil => 10,
    Dificuldade.media => 20,
    Dificuldade.dificil => 30,
  };

  String get formatados => switch (this) {
    Dificuldade.facil => 'Fácil',
    Dificuldade.media => 'Média',
    Dificuldade.dificil => 'Difícil',
  };
}
