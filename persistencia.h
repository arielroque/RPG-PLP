
#ifndef PERSISTENCE_H
#include <stdio.h>
#include "estruturas.h"
#define PERSISTENCE_H

void checarArquivo(const char arquivo[]);
void salvarScore(SCORE s);
void getScores(SCORE *scores);
void mostrarRanking();
int comparadorScore(const void *s1, const void *s2);

#endif