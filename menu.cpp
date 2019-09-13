#include <bits/stdc++.h>
#include <string>
#include <thread>
#include <chrono>
#include <time.h>
#include <unistd.h>
#include "quiz.h"
#include "estruturas.h"
#include "persistencia.h"
#include "constantes.h"
#include "leitor_de_arquivos.h"

using namespace std;

using std::cout;
using std::flush;
using std::string;
using std::chrono::milliseconds;
using std::this_thread::sleep_for;

int tempo;
int aux = 0;

vector<string> fases = {"Fase 1 - 1", "Fase 1 - 2", "Fase 1 - 3", "Fase 1 - 4", "Fase 1 - 5", "Fase 2 - 1", "Fase 2 - 2", "Fase 2 - 3", "Fase 2 - 4", "Fase 2 - 5", "Fase 3 - 1", "Fase 3 - 2", "Fase 3 - 3"};

pthread_t thr_id;

SCORE pontuacao ;

struct JOGADOR personagem;

void salvarScoreJogador()
{
    int score = FATORSCORE * tempo;
    pontuacao.tempoGasto = tempo;
    pontuacao.valor = score;

    salvarScore(pontuacao);
}

INIMIGO tipo_inimigo(string inimigoP)
{
    struct INIMIGO inimigo;
    if (inimigoP == "Bestial")
    {
        inimigo.vida = 70;
        inimigo.dano = 15;
    }

    else if (inimigoP == "Soldado")
    {
        inimigo.vida = 110;
        inimigo.dano = 20;
    }

    else if (inimigoP == "Chefe")
    {
        inimigo.vida = 230;
        inimigo.dano = 25;
    }

    return inimigo;
}

void *cronometro(void *dados)
{
    while (1)
    {
        sleep(1);
        ++tempo;
        fflush(stdout);
    }
    return NULL;
}

void sleepcp(int milliseconds)
{
    clock_t tempo_final;
    tempo_final = clock() + milliseconds * CLOCKS_PER_SEC / 1000;
    while (clock() < tempo_final)
    {
    }
}

void loading()
{
    printf(
        "#       #######    #    ######  ### #     #  #####  \n"
        "#       #     #   # #   #     #  #  ##    # #     # \n"
        "#       #     #  #   #  #     #  #  # #   # #       \n"
        "#       #     # #     # #     #  #  #  #  # #  #### \n"
        "#       #     # ####### #     #  #  #   # # #     # \n"
        "#       #     # #     # #     #  #  #    ## #     # \n"
        "####### ####### #     # ######  ### #     #  #####  \n");
    sleepcp(2500);
    system("clear");
}

void mostrarRanking()
{
    loading();

    printf("                          RANKING TOP 5                         \n");
    printf("+--------------------------------------------------------------+\n");
    printf("|      JOGADOR       |        SCORE       |   TEMPO DE JOGO    |\n");
    printf("+--------------------------------------------------------------+\n");

    getRanking();

    printf("+--------------------------------------------------------------+\n");

    sleepcp(6000);
    system("clear");
}

void lobo()
{
    printf("#############################################################\n");
    printf("###################################################   #######\n");
    printf("###############################################   /~|   #####\n");
    printf("############################################   _- `~~~', ####\n");
    printf("##########################################  _-        )  ####\n");
    printf("#######################################  _-           |  ####\n");
    printf("####################################  _-             ;  #####\n");
    printf("##########################  __---___-               |   #####\n");
    printf("#######################   _~   ,,                  ;  `,,  ##\n");
    printf("#####################  _-     ;'                  |  ,'  ; ##\n");
    printf("###################  _~      '                    `~'   ; ###\n");
    printf("############   __---;                                 ,' ####\n");
    printf("########   __~~  ___                                ,' ######\n");
    printf("#####  _-~~   -~~ _                               ,' ########\n");
    printf("##### `-_         _                              ; ##########\n");
    printf("#######  ~~----~~~   ;                          ; ###########\n");
    printf("#########  /          ;                        ; ############\n");
    printf("#######  /             ;                      ; #############\n");
    printf("#####  /                `                    ; ##############\n");
    printf("###  /                                      ; ###############\n");
    printf("#                                            ################\n");

    sleepcp(1500);
    system("clear");
}

void imperator()
{
    printf("\n");
    printf("                        ==(W{==========-      /===-\n");
    printf("                          ||  (.--.)         /===-_---~~~~~~~~~------____\n");
    printf("                          |\\_,|**|,__      |===-~___                _,-' `\n");
    printf("             -==\\        `\\ ' `--'   ),    `//~\\   ~~~~`---.___.-~~\n");
    printf("       ______-==|        /`\\_. .__/\\ \\    | |  \\           _-~`\n");
    printf("   __--~~~  ,-/-==\\      (   | .  |~~~~|   | |  ` \\        ,'\n");
    printf("_-~       /'    |  \\     )__/==0==\\<>/   / /      \\      /\n");
    printf("  .'        /       |   \\      /~\\__/~~\\/  /' /       \\   /'\n");
    printf(" /  ____  /         |    \\`\\.__/-~~   \\  |_/'  /       \\/'\n");
    printf("/-'~    ~~~~~---__  |     ~-/~         ( )   /'        _--~`\n");
    printf("             \\_|      /        _) | ;  ),   __--~~\n");
    printf("                '~~--_/      _-~/- |/ \\   '-~ \n");
    printf("               {\\_--/}    /  \\_>-|)<__\\      \n");
    printf("               /'   (_/  _-~  | |__>--<__|      |\n");
    printf("              |   _/) )-~     | |__>--<__|      |\n");
    printf("              / /~ ,_/       / /__>---<__/      |\n");
    printf("             o-o _//        /-~_>---<__-~      /\n");
    printf("             (^(~          /~_>---<__-      _-~\n");
    printf("            ,/|           /__>--<__/     _-~\n");
    printf("         ,//('(          |__>--<__|     /                  .----_\n");
    printf("        ( ( '))          |__>--<__|    |                 /' _---_~\n");
    printf("     `-)) )) (           |__>--<__|    | -IMPERATOR      /'  /     ~\\`\n");
    printf("    ,/,'//( (            \\__>--< \\   \\            /'  //        ||\n");
    printf("  ,( ( ((, ))              ~-__>--<_~-_  ~--____---~' _/'/        /'\n");
    printf("`~/  )` ) ,/|                 ~-_~>--<_/-__       __-~ _/\n");
    printf("._-~//( )/ )) `                    ~~-'_/_/ /~~~~~~~__--~\n");
    printf(";'( ')/ ,)(                              ~~~~~~~~~~\n");
    printf("' ) ( (/)\n");
    printf("'   '  `\n");
}

void cavaloMarinho()
{
    printf("                     $$$$..\n");
    printf("                   ed$$$$$$F\n");
    printf("                   d$$$$$$$$\n");
    printf("                  ^$$$$$$$$$\n");
    printf("                   $$$$$$$$$$\n");
    printf("                  $$$$$$3$$$$$\n");
    printf("                 4$$$$$F  ***$$b\n");
    printf("                 $$$$$$$c     \n");
    printf("                 4$$$$$$$$c\n");
    printf("                  $$$$$$$$$$.\n");
    printf("                  ^$$$$$$$$$$\n");
    printf("                 . ^$$$$$$$$$b\n");
    printf("              ^$$$  d$$$$$$$$$\n");
    printf("               $$$$$$$$$$$$$$P\n");
    printf("             *$$$$$$$$$$$$$$$\n");
    printf("               $$$$$$$$$$$$$\n");
    printf("             =*$$$$$$$$$$$P\n");
    printf("               $**$$$$$P\n");
    printf("                 d$$$$F\n");
    printf("                 $$$$$\n");
    printf("                4$$$$$    .e.\n");
    printf("                ^$$$$$   dP*$L\n");
    printf("                 $$$$$      4$\n");
    printf("                 ^$$$$.     4$\n");
    printf("                  ^$$$$.   .$P\n");
    printf("                    *$$$$$$$$\n");
    printf("                      '*$$*'\n");

    sleepcp(2500);
    system("clear");
}

void gameStart()
{
     
    //slow_print(lerArquivo("historia/Introducao.txt", MAXSTEP), 30);
    //sleepcp(4000);

    pthread_create(&thr_id, NULL, cronometro, NULL);
    system("clear");
    fase1();
}

void fase3()
{
    printf("FASE 3...\n\n");

    cout << "Status do jogador\nNome: " << personagem.nome << "\nVida: " << personagem.vida << "\nDano: " << personagem.dano << "\n"
         << endl;

    loading();
    system("clear");

    personagem.dano += 5;

    // BONIFICAÇÃO SIMPLES PRA CASO O JOGADOR TENHA ERRADO POUCO OU MUITO

    if (personagem.vida >= 120)
    {
        personagem.vida += 60;
    }
    else if (personagem.vida > 80 && personagem.vida < 120)
    {
        personagem.vida += 50;
    }
    else
    {
        personagem.vida += 80;
    }

    slow_print(lerArquivo("historia/Fase2-0.txt", MAXSTEP), 50);
    sleepcp(4000);
    system("clear");

    if (actionFase3())
    {
        slow_print(lerArquivo("historia/Fase2-1.txt", MAXSTEP), 50);
        sleepcp(4000);
        salvarScoreJogador();

        endgame();
        mostrarRanking();

    }
    else
    {
        gameOver();
        slow_print("\nVocê morreu na Fase 3... O vilão venceu", 40);
        sleepcp(3000);

        pthread_cancel(thr_id);
        salvarScoreJogador();

        mostrarRanking();

        menu();
    }
}

bool actionFase3()
{

    int c;
    imperator();
    sleepcp(4000);
    system("clear");

    //OPORTUNIDADE DE ESCOLHA ENTRE BATALHAR E FUGIR

    cout << "1. Batalhar" << endl
         << "2. Fugir" << endl;
    cin >> c;

    if (c == 1)
    {
        //DIRETO PRA BATALHA
        system("clear");
        return batalha(personagem, tipo_inimigo("Chefe"), 100);
    }
    else
    {
        bool flag = fugir();
        //CASO O JOGADOR ESCOLHA FUGIR
        if (flag == 1)
        {
            cout << tentaFugir(flag) << endl;
            return true;
        }
        else
        {
            cout << tentaFugir(flag) << endl;
            sleepcp(3000);
            return batalha(personagem, tipo_inimigo("Chefe"), 100);
        }
    }
}

void endgame()
{
    cout << endl;
    cout << "██╗   ██╗ ██████╗  ██████╗███████╗    ██╗   ██╗███████╗███╗   ██╗ ██████╗███████╗██╗   ██╗██╗██╗██╗██╗██╗██╗██╗██╗" << endl;
    cout << "██║   ██║██╔═══██╗██╔════╝██╔════╝    ██║   ██║██╔════╝████╗  ██║██╔════╝██╔════╝██║   ██║██║██║██║██║██║██║██║██║" << endl;
    cout << "██║   ██║██║   ██║██║     █████╗      ██║   ██║█████╗  ██╔██╗ ██║██║     █████╗  ██║   ██║██║██║██║██║██║██║██║██║" << endl;
    cout << "╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██║     ██╔══╝  ██║   ██║╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝" << endl;
    cout << " ╚████╔╝ ╚██████╔╝╚██████╗███████╗     ╚████╔╝ ███████╗██║ ╚████║╚██████╗███████╗╚██████╔╝██╗██╗██╗██╗██╗██╗██╗██╗" << endl;
    cout << "  ╚═══╝   ╚═════╝  ╚═════╝╚══════╝      ╚═══╝  ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝" << endl;
    cout << endl
         << endl;
    sleepcp(5000);
    creditos();
}

void fase1()
{
    printf("FASE 1...\n\n");

    cout << "Status do jogador\nNome: " << personagem.nome << "\nVida: " << personagem.vida << "\nDano: " << personagem.dano << "\n"
         << endl;

    loading();

    if (actionFase1())
    {
        slow_print(lerArquivo("historia/Fase0-1.txt", MAXSTEP), 30);
        sleepcp(4000);

        salvarScoreJogador();

        fase2();
    }
    else
    {
        gameOver();
        slow_print("\nVocê morreu na Fase 1... Boa sorte da próxima vez", 40);
        sleepcp(3000);

        pthread_cancel(thr_id);
        salvarScoreJogador();

        mostrarRanking();

        menu();
    }
}

bool actionFase1()
{
    int c;

    slow_print(lerArquivo("historia/Fase0-0.txt", MAXSTEP), 30);
    sleepcp(4000);
    system("clear");

    lobo();

    sleepcp(3000);
    system("clear");

    //OPORTUNIDADE DE ESCOLHA ENTRE BATALHAR E FUGIR

    cout << "1. Batalhar" << endl
         << "2. Fugir" << endl;
    cin >> c;

    if (c == 1)
    {
        //DIRETO PRA BATALHA
        system("clear");
        return batalha(personagem, tipo_inimigo("Bestial"), 7);
    }
    else
    {
        bool flag = fugir();
        //CASO O JOGADOR ESCOLHA FUGIR
        if (flag == 1)
        {
            cout << tentaFugir(flag) << endl;
            return true;
        }
        else
        {
            cout << tentaFugir(flag) << endl;
            sleepcp(3000);
            return batalha(personagem, tipo_inimigo("Bestial"), 100);
        }
    }
}

void fase2()
{
    printf("FASE 2...\n\n");

    loading();
    system("clear");
    // upgrade nos atributos de jogador

    personagem.dano += 10;

    // BONIFICAÇÃO SIMPLES PRA CASO O JOGADOR TENHA ERRADO POUCO OU MUITO

    if (personagem.vida >= 120)
    {
        personagem.vida += 60;
    }
    else if (personagem.vida > 80 && personagem.vida < 120)
    {
        personagem.vida += 50;
    }
    else
    {
        personagem.vida += 80;
    }

    system("clear");

    slow_print("A batalha está prestes a começar, mas você está dentro da água, você não pode atacar primeiro pois você está na área do inimigo\n\n", 50);

    slow_print(lerArquivo("historia/Fase1-0.txt", MAXSTEP), 40);

    sleepcp(2500);
    system("clear");

    if (actionFase2())
    {
        slow_print(lerArquivo("historia/Fase1-1.txt", MAXSTEP), 50);

        salvarScoreJogador();

        fase3();
    }
    else
    {
        gameOver();
        slow_print("\nVocê morreu na Fase 2... Não foi dessa vez", 40);
        sleepcp(3000);

        pthread_cancel(thr_id);
        salvarScoreJogador();

        mostrarRanking();

        menu();
    }
}

bool actionFase2()
{

    cout << "A criatura mítica avança em você com todas as forças\n\n"
         << endl;

    int c;
    printf("\n");
    cavaloMarinho();

    sleepcp(2000);
    system("clear");

    //OPORTUNIDADE DE ESCOLHA ENTRE BATALHAR E FUGIR

    cout << "1. Batalhar" << endl
         << "2. Fugir" << endl;
    cin >> c;

    if (c == 1)
    {
        system("clear");
        return batalha(personagem, tipo_inimigo("Soldado"), 18);
    }
    else
    {
        bool flag = fugir();
        //CASO O JOGADOR ESCOLHA FUGIR
        if (flag == 1)
        {
            cout << tentaFugir(flag) << endl;
            return true;
        }
        else
        {
            cout << tentaFugir(flag) << endl;
            return batalha(personagem, tipo_inimigo("Soldado"), 100);
        }
    }
}

bool batalha(struct JOGADOR jogador, struct INIMIGO inimigo, int eIniciativa)
{
    system("clear");
    cout << "INICIA-SE A BATALHA..." << endl;
    int init = rolaDado();

    bool firstAttack = iniciativa(init, eIniciativa);
    if (firstAttack)
    {

        inimigo.vida -= jogador.dano;
    }
    else
    {
        personagem.vida -= inimigo.dano;
    }

    while (personagem.vida > 0 && inimigo.vida > 0)
    {
        int op;
        cout << lerPergunta(fases[aux]) << endl;
        cin >> op;

        if (op == getResposta(fases[aux]))
        {
            cout << "RESPOSTA CORRETA! BÔNUS DE ATAQUE ATIVADO!" << endl;
            inimigo.vida -= personagem.dano + 30;
            personagem.vida -= inimigo.dano;
        }
        else
        {
            cout << "RESPOSTA ERRADA! VOCÊ SOFRERÁ UM POUCO MAIS DE DANO!" << endl;
            inimigo.vida -= personagem.dano;
            personagem.vida -= inimigo.dano + 10;
        }
        aux++;
        cin.ignore();
        cout << "Vida do jogador: " << personagem.vida << " Vida do inimigo: " << inimigo.vida << endl;
        sleepcp(3500);
    }
    system("clear");
    if (personagem.vida > 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool iniciativa(int iniciativa, int eIniciativa)
{
    return iniciativa > eIniciativa;
}

int rolaDado()
{
    int dado = (rand() % (20)) + 1;
    return dado;
}
void nomeDoJogador()
{
    printf("ESCOLHA O NOME DO JOGADOR: ");
    cin >> pontuacao.jogador;

    string nome;
    
    for(int i = 0; i < 10; i++){
        nome = nome + pontuacao.jogador[i];
    }

    personagem.nome = nome;

    sleepcp(1000);
    printf("\n");
}

void logoMenu()
{
    vector<string> menu{"######  #       ######        #    ######  #     # ####### #     # ####### \n", "#     # #       #     #      # #   #     # #     # #       ##    #    #    \n", "#     # #       #     #     #   #  #     # #     # #       # #   #    #    \n", "######  #       ######     #     # #     # #     # #####   #  #  #    #    \n", "#       #       #          ####### #     #  #   #  #       #   # #    #    \n", "#       #       #          #     # #     #   # #   #       #    ##    #    \n", "#       ####### #          #     # ######     #    ####### #     #    #  \n\n\n"};

    for (unsigned i = 0; i < menu.size(); i++)
    {
        cout << menu[i];
        sleepcp(200);
    }
}

bool fugir()
{
    int rolagem = rolaDado();
    return rolagem >= 17;
}

string tentaFugir(bool fugiu)
{
    string str = "\nVocê tenta fugir e... ";

    (fugiu) ? str += "Escapou !\n" : str += "Não conseguiu ! O monstro irá usar essa brecha como oportunidade.\n";

    return str;
}

int menu()
{

    cout << "" << endl;
    cout << "|-----------------------------------------------------------------------------|" << endl;
    cout << "|                                 Menu                                        |" << endl;
    cout << "|                           [1] Iniciar Jogo                                  |" << endl;
    cout << "|                           [2] Ranking                                       |" << endl;
    cout << "|                           [3] Créditos                                      |" << endl;
    cout << "|                           [0] Sair do Jogo                                  |" << endl;
    cout << "|-----------------------------------------------------------------------------|" << endl;
    cout << endl
         << endl;

    int opcao;
    cin >> opcao;
    switch (opcao)
    {
    case 1:
    {
        sleepcp(1000);

        nomeDoJogador();
        cout << "Vamos lá " << personagem.nome << "!" << endl;
        sleepcp(2000);
        system("clear");

        gameStart();
        break;
    }
    case 2:
        mostrarRanking();
        break;

    case 3:
        creditos();
        break;
    case 0:
        break;
    default:
    {
        printf("Opção inválida!\n");
        sleepcp(1000);
        system("clear");
    }
    break;
    }

    return opcao;
}

void creditos()
{
    system("clear");

    vector<string> equipe{"Integrantes:\n\n", "Brener Quevedo\n", "Matheus Justino\n", "Ariel Roque\n", "Igor Lima\n\n"};

    for (unsigned i = 0; i < equipe.size(); i++)
    {
        cout << equipe[i];
        sleepcp(400);
    }
    sleepcp(3000);

    system("clear");
}

void gameOver()
{

    printf(" ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ▒█████   ██▒   █▓▓█████  ██▀███\n");
    sleepcp(300);
    printf(" ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒\n");
    sleepcp(300);
    printf("▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒\n");
    sleepcp(300);
    printf("░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄\n");
    sleepcp(300);
    printf("░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒\n");
    sleepcp(300);
    printf(" ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░\n");
    sleepcp(300);
    printf("  ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░     ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░\n");
    sleepcp(300);
    printf("░ ░   ░   ░   ▒   ░      ░      ░      ░ ░ ░ ▒       ░░     ░     ░░   ░ \n");
    sleepcp(300);
    printf("      ░       ░  ░       ░      ░  ░       ░ ░        ░     ░  ░   ░     \n");
    sleepcp(300);
    printf("                                                      ░                \n");
}

void slow_print(const string &mensagem, unsigned int millis_per_char)
{
    for (const char c : mensagem)
    {
        cout << c << flush;

        sleep_for(milliseconds(millis_per_char));
    }
}

int main()
{
    logoMenu();

    while (1)
    {
        if (menu() == 0)
        {
            sleepcp(1000);
            system("clear");
            break;
        }
    }
}
