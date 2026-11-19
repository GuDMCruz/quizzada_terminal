# Quizzada de terminal v1

Quiz de bandeiras desenvolvido em Dart como projeto final da primeira parte da capacitação. O jogo funciona no terminal e possui cinco perguntas com quatro alternativas cada.

## Como executar

É necessário ter o Dart SDK instalado.

Clone o repositório:

```bash
git clone https://github.com/GuDMCruz/quizzada_terminal.git
cd quizzada_terminal
```

Execute o jogo:

```bash
dart run
```

## Como jogar

Informe seu nome e responda às perguntas digitando A, B, C ou D.

O jogo aceita letras maiúsculas e minúsculas e ignora espaços antes e depois da resposta. Entradas inválidas mostram um aviso e permitem tentar novamente.

Cada acerto soma pontos conforme a dificuldade:

- Fácil: 10 pontos.
- Média: 20 pontos.
- Difícil: 30 pontos.

Ao errar, o jogo informa a alternativa correta. No final, o placar mostra o nome do jogador, os pontos conquistados, o total possível e a quantidade de acertos.

## Organização

- `bin/quizzada_terminal.dart`: entrada do programa e interação pelo terminal.
- `lib/pergunta.dart`: classe `Pergunta` e conversão dos mapas em objetos.
- `lib/jogador.dart`: nome e pontuação do jogador.
- `lib/partida.dart`: perguntas da partida, validação, correção e placar.
- `lib/dificuldade.dart`: dificuldades e suas pontuações.
- `lib/resposta_invalida_exception.dart`: exceção própria para respostas inválidas.

## Verificação do código

Análise:

```bash
dart analyze
```

Formatação:

```bash
dart format .
```

## Bônus

Nenhum bônus foi implementado nesta versão.
