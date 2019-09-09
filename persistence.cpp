#include <bits/stdc++.h>
#include "structures.h"
#include "persistence.h"

using namespace std;

const char READ_OPERATION[] = "r";
const char APPEND_OPERATION[] = "a";
const char WRITE_OPERATION[] = "w";
const char SCORE_SOURCE[] = "score";

SCORE DEFAULT_SCORE = {"", 0};
FILE *file;
SCORE output;

void checkArchive(const char archive[])
{
    file = fopen(archive, READ_OPERATION);
    if (file == NULL)
    {
        file = fopen(archive, WRITE_OPERATION);
        cout << "Arquivo nao encontrado, criando arquivo" <<archive;
        exit(1);
    }
    fclose(file);
}

void showRanking()
{
    checkArchive(SCORE_SOURCE);
    file = fopen(SCORE_SOURCE, READ_OPERATION);
    int i = 0;
    while (fread(&output, sizeof(struct SCORE), 1, file))
    {
        if (i == 5)
        {
            break;
        }
        i++;
        cout << "Player: " << output.player << " Score: " << output.value << endl;
    }
    fclose(file);
    
    if (i == 0){
         cout << "Player: " << DEFAULT_SCORE.player << "Score: " << DEFAULT_SCORE.value << endl;
         cout << "Player: " << DEFAULT_SCORE.player << "Score: " << DEFAULT_SCORE.value << endl;
         cout << "Player: " << DEFAULT_SCORE.player << "Score: " << DEFAULT_SCORE.value << endl;
         cout << "Player: " << DEFAULT_SCORE.player << "Score: " << DEFAULT_SCORE.value << endl;
         cout << "Player: " << DEFAULT_SCORE.player << "Score: " << DEFAULT_SCORE.value << endl;
}
}

void getScores(SCORE *scores)
{
    checkArchive(SCORE_SOURCE);
    file = fopen(SCORE_SOURCE, READ_OPERATION);
    int i = 0;
    while (fread(&output, sizeof(struct SCORE), 1, file))
    {
        if (i == 5)
        {
            break;
        }
        scores[i] = output;
        i++;
    }
    fclose(file);
}

int scoreComparator(const void *s1, const void *s2)
{
    struct SCORE *v1 = (struct SCORE *)s1;
    struct SCORE *v2 = (struct SCORE *)s2;

    return v2->value - v1->value;
}

void saveScore(SCORE s)
{
    checkArchive(SCORE_SOURCE);

    SCORE scores[6] = {DEFAULT_SCORE, DEFAULT_SCORE, DEFAULT_SCORE,
                       DEFAULT_SCORE, DEFAULT_SCORE, DEFAULT_SCORE};
    getScores(scores);

    scores[5] = s;

    qsort(scores, 6, sizeof(struct SCORE), scoreComparator);

    file = fopen(SCORE_SOURCE, WRITE_OPERATION);

    for (int i = 0; i < 5; i++)
    {
        fwrite(&scores[i], sizeof(struct SCORE), 1, file);
    }
    fclose(file);
}
