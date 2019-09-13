#ifndef STRUCTURES_H

#define STRUCTURES_H
#include <bits/stdc++.h>

using namespace std;

typedef struct SCORE
{
   char jogador[10];
   int valor;
   int tempoGasto;
} SCORE;

typedef struct JOGADOR
{
    string nome;
    int vida = 150;
    int dano = 20;
} JOGADOR;

typedef struct INIMIGO
{
    int vida;
    int dano;
} INIMIGO;

void slow_print(const string&, unsigned int);
void sleepcp();
void gameStart();
bool actionFase1();
bool actionFase2();
bool actionFase3();
void fase1();
void fase2();
void fase3();
bool batalha(struct JOGADOR jogador, struct INIMIGO inimigo, int iniciativa);
bool fugir();
int rolaDado();
string tentaFugir(bool flag);
bool iniciativa(int iniciativa, int eIniciativa);
int menu();
void creditos();
void gameOver();
void slow_print(const string&, unsigned int);
void salvarScoreJogador(int pontos);
void salvarScore(SCORE s);
void getRanking();
void mostrarRanking();
INIMIGO tipo_inimigo(struct INIMIGO inimigo);
void endgame();


#endif