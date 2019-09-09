#include <bits/stdc++.h>
#include <time.h>


using namespace std;


struct JOGADOR {
    string nome;
    int vida = 150;
    int dano = 10;
};

struct inimigo {
    string nome;
    int vida = 200;
    int dano = 5;
};

void sleepcp(int milliseconds) {
    clock_t tempo_final;
    tempo_final = clock() + milliseconds * CLOCKS_PER_SEC/1000;
    while (clock() < tempo_final) {}
}

void loading() {
    printf(
        "#       #######    #    ######  ### #     #  #####  \n"
        "#       #     #   # #   #     #  #  ##    # #     # \n"
        "#       #     #  #   #  #     #  #  # #   # #       \n"
        "#       #     # #     # #     #  #  #  #  # #  #### \n"
        "#       #     # ####### #     #  #  #   # # #     # \n"
        "#       #     # #     # #     #  #  #    ## #     # \n"
        "####### ####### #     # ######  ### #     #  #####  \n"
    );
    sleepcp(1500);
    system("clear");
}

void peixe() {
    const char * c = "'\'";

    printf("       o                 o\n");
    printf("                  o\n");
    printf("         o   ______      o\n");
    printf("           _/  (   %c_\n", c);
    printf(" _       _/  (       %c_  O\n");
    printf("| %c_   _/  (   (    0  %c  \n", c);
    printf("|== %c_/  (   (           | \n", c);
    printf("|=== _ (   (   (          | \n", c);
    printf("|==_/ %c_ (   (           | \n", c);
    printf("|_/     %c_ (   (    %c__/\n", c);
    printf("          %c_ (      _/\n", c);
    printf("            |  |___/\n", c);
    printf("           /__/\n", c);

    sleepcp(2500);
    system("clear");
}

void cavaloMarinho() {
    printf("                     $$$$..\n");
    printf("                   ed$$$$$$F                      *Seahorse*\n");
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
    printf("                 $$$$$   %  4$\n");
    printf("                 ^$$$$.     4$\n");
    printf("                  ^$$$$.   .$P\n");
    printf("                    *$$$$$$$$\n");
    printf("                      '*$$*'\n");

    sleepcp(2500);
    system("clear");
}

void fase1(struct JOGADOR jogador) {
    printf("FASE 1...\n\n");
    loading();
    printf("História até o aparecimento de um inimigo qualquer...\n");
    sleepcp(2500);
    system("clear");
    peixe();
    cout << "Status do jogador\nNome: " << jogador.nome <<"\nVida: " << jogador.vida << "\nDano: " << jogador.dano << endl;
    sleepcp(2500);
    system("clear");
    printf("História até o aparecimento de um inimigo qualquer...\n");
    sleepcp(2500);
    system("clear");
    cavaloMarinho();
}

void gameStart(struct JOGADOR jogador) {
    fase1(jogador);
}

string nomeDoJogador() {
    printf("ESCOLHA O NOME DO JOGADOR: ");
    string nome = "";
    cin >> nome;
    sleepcp(1000);
    printf("\n");
    return nome;
}

void logoMenu() {
    vector<string> menu{"######  #       ######        #    ######  #     # ####### #     # ####### \n", "#     # #       #     #      # #   #     # #     # #       ##    #    #    \n", "#     # #       #     #     #   #  #     # #     # #       # #   #    #    \n", "######  #       ######     #     # #     # #     # #####   #  #  #    #    \n", "#       #       #          ####### #     #  #   #  #       #   # #    #    \n", "#       #       #          #     # #     #   # #   #       #    ##    #    \n", "#       ####### #          #     # ######     #    ####### #     #    #  \n\n\n"};

    for (int i = 0; i < menu.size(); i++) {
        cout << menu[i];
        sleepcp(200);
    }
}


int menu () {

    printf("INICIAR [1]: \nRANKING [2]: \nCREDITOS [3]: \nSAIR[0]: \n");
    int opcao;
    cin >> opcao;
    switch (opcao) {
    case 1:
        { sleepcp(1000);
        string player = nomeDoJogador();
        struct JOGADOR personagem;
        personagem.nome = player;
        cout << "Vamos lá " + player + "!" << endl;
        sleepcp(2000);
        system("clear");
        gameStart(personagem); }
        break;
    case 2:
        break;
    case 3:
        break;
    case 0:
        break;
    default:
        { printf("Opção inválida!\n");
        sleepcp(1000);
        system("clear"); }
        break;
    }

    return opcao;
}


int main() {

    logoMenu();
    while (1) {
        if (menu() == 0) {
            sleepcp(1000);
            system("clear");
            break;
        }
    }

    return 0;
}