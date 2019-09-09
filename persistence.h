
#ifndef PERSISTENCE_H
#include <stdio.h>
#include "structures.h"
#define PERSISTENCE_H

void checkArchive(const char archive[]);
void saveScore(SCORE s);
void getScores(SCORE *scores);
void showRanking();
int scoreComparator(const void *s1, const void *s2);

#endif