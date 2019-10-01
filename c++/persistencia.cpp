#include <bits/stdc++.h>
#include "estruturas.h"
#include "persistencia.h"

using namespace std;

const char READ_OPERATION[] = "r";
const char APPEND_OPERATION[] = "a";
const char WRITE_OPERATION[] = "w";
const char SCORE_SOURCE[] = "score";

FILE *file;
SCORE score;
SCORE DEFAULT_SCORE = {"", 0, 0};

void checarArquivo(const char arquivo[])
{
    file = fopen(arquivo, READ_OPERATION);
    if (file == NULL)
    {
        file = fopen(arquivo, WRITE_OPERATION);
        cout << "Arquivo nao encontrado, criando arquivo" << arquivo;
        exit(1);
    }
    fclose(file);
}

void getRanking()
{
    checarArquivo(SCORE_SOURCE);
    file = fopen(SCORE_SOURCE, READ_OPERATION);
    int i = 0;

    while (fread(&score, sizeof(struct SCORE), 1, file))
    {
        if (i == 5)
        {
            break;
        }
        i++;
        printf("|%*s|%*d|%*d|\n",20,score.jogador,20,score.valor,20,score.tempoGasto);
    }
    fclose(file);

    if (i == 0)
    {
       
        printf("|%*s|%*d|%*d|\n",20,DEFAULT_SCORE.jogador,20,DEFAULT_SCORE.valor,20,DEFAULT_SCORE.tempoGasto);
    }
}

void getScores(SCORE *scores)
{
    checarArquivo(SCORE_SOURCE);
    file = fopen(SCORE_SOURCE, READ_OPERATION);

    int i = 0;

    while (fread(&score, sizeof(struct SCORE), 1, file))
    {
        if (i == 5)
        {
            break;
        }
        scores[i] = score;
        i++;
    }
    fclose(file);
}

int comparadorScore(const void *s1, const void *s2)
{
    struct SCORE *v1 = (struct SCORE *)s1;
    struct SCORE *v2 = (struct SCORE *)s2;

    return v2->valor - v1->valor;
}

void salvarScore(SCORE s)
{
    checarArquivo(SCORE_SOURCE);

    SCORE scores[6] = {DEFAULT_SCORE, DEFAULT_SCORE, DEFAULT_SCORE,
                       DEFAULT_SCORE, DEFAULT_SCORE, DEFAULT_SCORE};
    getScores(scores);

    scores[5] = s;
    qsort(scores, 6, sizeof(struct SCORE), comparadorScore);

    file = fopen(SCORE_SOURCE, WRITE_OPERATION);

    for (int i = 0; i < 5; i++)
    {
        fwrite(&scores[i], sizeof(struct SCORE), 1, file);
    }
    fclose(file);
}
