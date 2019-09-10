#include <bits/stdc++.h>
#include <time.h>
#include "quiz.h"


using namespace std;

void sleepcp();
bool actionFase1(struct JOGADOR jogador);
void fase1(struct JOGADOR jogador);
void fase2(struct JOGADOR jogador);
bool batalha(struct JOGADOR jogador, struct INIMIGO inimigo, int iniciativa);
bool fugir();
int rolaDado();
string tentaFugir(bool flag);
bool iniciativa(int iniciativa, int eIniciativa);


struct JOGADOR {
    string nome;
    int vida = 150;
    int dano = 20;
};

struct INIMIGO {
    string tipo;
    int vida;
    int dano;
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
    sleepcp(2500);
    system("clear");
}

void lobo() {

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

void imperator() {
    printf("\n");                                        
    printf("                      ==(W{==========-      /===-\n");
    printf("                          ||  (.--.)         /===-_---~~~~~~~~~------____\n");
    printf("                          | \\_,|**|,__      |===-~___                _,-' `\n");
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


void cavaloMarinho() {
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

void gameStart(struct JOGADOR jogador) {
    fase1(jogador);
}



void fase1(struct JOGADOR jogador) {
    printf("FASE 1...\n\n");
    cout << "Status do jogador\nNome: " << jogador.nome <<"\nVida: " << jogador.vida << "\nDano: " << jogador.dano << "\n" << endl;
    loading();
    printf("Você é um guerreiro que está em uma jornada atrás do herói caído Imperator que antes fora um paladino, mas após cometer o crime de matar o rei, tornou-se um algoz\n");
    imperator();
    sleepcp(3000);
    
	system("clear");
    printf("Inicialmente você se encontra na entrada da cidade de Tristam. A cidade está vazia, de noite, escondido no escuro, uma criatura o observa...\n");
    sleepcp(3000);
    system("clear");
    if (actionFase1(jogador)) {
        cout << jogador.vida << endl;
        fase2(jogador);
    }
}


bool actionFase1(struct JOGADOR jogador) {
    int opcao;
    
    struct INIMIGO wolf;
    wolf.tipo = "Bestial";

    cout << "1. Observar criatura mais de perto\n" << endl;
    cin >> opcao;
    switch (opcao) {
        case 1:
            int c;
            printf("A criatura se mostra um lobo selvagem e avança em sua direção\n");
            lobo();
            sleepcp(3000);
            system("clear");
            //OPORTUNIDADE DE ESCOLHA ENTRE BATALHAR E FUGIR

            cout << "1. Batalhar" << endl << "2. Fugir" << endl;
            cin >> c;
            
            if(c == 1) {
                //DIRETO PRA BATALHA
                system("clear");
                return batalha(jogador, wolf, 7);
            } else {
                bool flag = fugir();
                //CASO O JOGADOR ESCOLHA FUGIR
                if(flag == 1) {
                    cout << tentaFugir(flag) << endl;
                    return true; 
                } else {
                    cout << tentaFugir(flag) << endl;
                    return batalha(jogador, wolf, 100);
                }
                
            }
            break;
        default:
            break;
            

            
    }

}

void fase2(struct JOGADOR jogador) {
    printf("FASE 2...\n\n");
    cout << "Status do jogador\nNome: " << jogador.nome <<"\nVida: " << jogador.vida << "\nDano: " << jogador.dano << endl;
    loading();
    printf("História até o aparecimento de um inimigo qualquer...\n");
    sleepcp(2500);
    system("clear");
    cavaloMarinho();
    //sleepcp(2500);
    system("clear");
}


 void tipo_inimigo(struct INIMIGO inimigo) {
    
    if(inimigo.tipo == "Bestial") {
        inimigo.vida = 70;
        inimigo.dano = 15;
    }   

    else if(inimigo.tipo == "Soldado") {
        inimigo.vida = 110;
        inimigo.dano = 20;
    }
    
    else {
        inimigo.tipo = "Chefe";
        inimigo.vida = 230;
        inimigo.dano = 25;
    }

}

bool batalha(struct JOGADOR jogador,struct INIMIGO inimigo, int eIniciativa) {
    tipo_inimigo(inimigo);
    int init = rolaDado();
    cout << init << endl;
    
    bool firstAttack = iniciativa(init, eIniciativa);
    if (firstAttack) {
        // TODO perguntas
        inimigo.vida -= jogador.dano;
    } else {
        jogador.vida -= inimigo.dano;
    }
    while (jogador.vida <= 0 && inimigo.vida <= 0) {
        // PERGUNTAS
        inimigo.vida -= jogador.dano;
        jogador.vida -= inimigo.dano;
        cout << jogador.vida + " " + inimigo.vida << endl;
    }
    if (jogador.vida > 0) {
        return true;
    } else {
        return false;
    }
}

bool iniciativa(int iniciativa, int eIniciativa) {
    return iniciativa > eIniciativa;
}


int rolaDado() {
    int dado = (rand() % ( 20 - 1 )) + 1;
    cout << dado << endl;
    return dado;
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

    for (unsigned i = 0; i < menu.size(); i++) {
        cout << menu[i];
        sleepcp(200);
    }
}


bool fugir() {
    int rolagem = rolaDado();
    return rolagem >= 17;
}

string tentaFugir(bool fugiu) {
    string str =  "Você tenta fugir e... ";

    (fugiu) ? str += "Escapou !" : str += "Não conseguiu ! O monstro irá usar essa brecha como oportunidade.";

    return str;
}

int menu () {

    printf("INICIAR [1]: \nRANKING [2]: \nCREDITOS [3]: \nSAIR[0]: \n");
    int opcao;
    cin >> opcao;
    switch (opcao) {
    case 1: {
        sleepcp(1000);
        string playerName = nomeDoJogador();
        struct JOGADOR personagem;
        personagem.nome = playerName;
        cout << "Vamos lá " + playerName + "!" << endl;
        sleepcp(2000);
        system("clear");
        gameStart(personagem);
        break;
    }
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

    int perguntas;
    cin>>perguntas;
    cin.ignore();
    string titulo;
    for(int i = 0;i<perguntas;++i){
        string titulo,enunciado;
        vector<string> opcoes;
        int resposta;

        cout<<"Titulo: ";
        getline(cin,titulo);
        cout<<endl;
        cout<<"Enunciado: ";
        string enunciando = "";
        while(true){
            getline(cin,enunciando);
            if(enunciando[0] == '#') break;
            enunciado+=enunciando+"\n";
        }
        cout<<endl;

        for(int j = 1;j<=NUMERO_OPCOES;++j){
            string input;
            cout<<"Opcao "<<j<<": ";
            getline(cin,input);
            opcoes.push_back("\n"+to_string(j)+") "+input);
        }
        cout<<"Resposta: ";
        cin>>resposta;
        cin.ignore();
        cout<<endl;
        gerarPergunta(titulo,enunciado,opcoes,resposta);
    }

    int resposta = 0;
    cout<<lerPergunta("Pergunta de teste")<<endl;
    cin>>resposta;

    if(resposta == getResposta("Pergunta de teste")){
        cout<<"Acertou!!"<<endl;
    }else{
        cout<<"Errou!!"<<endl;
    }


    //logoMenu();
    //while (1) {
    //    if (menu() == 0) {
    //        sleepcp(1000);
    //        system("clear");
    //        break;
    //    }
   // }

    return 0;
}




