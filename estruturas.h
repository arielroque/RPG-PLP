#ifndef STRUCTURES_H

#define STRUCTURES_H

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
    string tipo;
    int vida;
    int dano;
} INIMIGO;

void slow_print(const string&, unsigned int);
void sleepcp();
bool actionFase1(struct JOGADOR jogador);
bool actionFase2(struct JOGADOR jogador);
void fase1(struct JOGADOR jogador);
void fase2(struct JOGADOR jogador);
bool batalha(struct JOGADOR jogador, struct INIMIGO inimigo, int iniciativa);
bool fugir();
int rolaDado();
string tentaFugir(bool flag);
bool iniciativa(int iniciativa, int eIniciativa);
int menu();
void creditos();
void gameOver();
void slow_print(const string&, unsigned int);


#endif