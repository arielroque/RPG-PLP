#ifndef QUIZ_H_INCLUDED
#define QUIZ_H_INCLUDED
#include<bits/stdc++.h>
#define NUMERO_OPCOES 3
#include "leitor_de_arquivos.h"
#include "constantes.h"
using namespace std;

void gerarPergunta(string titulo, string enunciado, vector<string> opcoes, int resposta){

    /**
    Cria uma pergunta onde o titulo do arquivo eh dado
    Ainda faltam os ajustes quanto a formatacao da epergunta, ate aqui ela so funciona
    **/

    string path = PATHQUIZ + titulo + ".txt";

    //nao sei se dever vir com o titulo ou nao
    string content = titulo + "\n";
    content += "\n" + enunciado + "\n";

    for(int i = 0; i < opcoes.size(); ++i){
        content += opcoes[i];
    }

    /**
    Acima eh esperado ter uma funcao que formate a pergunta, caso tenha um gerador.
    **/

    escreverTexto(path,content,SOBRESCRITA);
    escreverTexto(path,to_string(resposta),APPEND);
}

string lerPergunta(string titulo){

    string path = (string)PATHQUIZ+titulo+".txt";
    string retorno = lerArquivo(path,MAXSTEP);

    //pop na resposta
    retorno.pop_back();
    retorno.pop_back();

    return retorno;
}

int getResposta(string titulo){

    string path = (string)PATHQUIZ+titulo+".txt";
    string retorno = lerArquivo(path,MAXSTEP);

    //O retorno vem com um \n no final
    //entao eh -2 pra conseguir o ultimo caractere dessa string
    return retorno[retorno.size()-2]-'0';
}

/**
Caso de teste:
1
Pergunta de teste
agora vai
degavar
vrido
taubua
stauta
#
opcao a
opcao b
opcao c
2
2
**/

//testador
/*
    int perguntas;
    cin>>perguntas;
    cin.ignore();
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
*/

#endif // QUIZ_H_INCLUDED
