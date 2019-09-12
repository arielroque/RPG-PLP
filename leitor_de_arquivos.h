#ifndef LEITOR_DE_ARQUIVOS_CPP_INCLUDED
#define LEITOR_DE_ARQUIVOS_CPP_INCLUDED
#include<bits/stdc++.h>
#include<fstream>
#include "constantes.h"

#define SEPARADOR '#'
#define SOBRESCRITA 1
#define APPEND 2

using namespace std;

/*
//reading test, le todo o arquivo
string texto = lerTexto((string)PATHQUIZ+"teste.txt",0);
int cnt = 1;
while(texto.size()>=1 && texto[0]!='#'){
    cout<<texto<<endl;
    texto = lerTexto((string)PATHQUIZ+"teste.txt",cnt++);
}
*/

string lerTexto(string path,int step){

    std::ifstream file(path);

    string retorno = "",line;
    int cntStep = 0;

    if(!file) return "";

    while(getline(file,line)){
        if(line[0] == SEPARADOR){
            cntStep++;
            if(cntStep>step) break;
        }else{
            if(cntStep>=step){
                retorno+=line+"\n";
            }
        }
    }

    file.close();
    return retorno;
}

string lerArquivo(string path,int maxStep){

    if(maxStep == 0) return "";

    string retorno = "";
    string texto = lerTexto(path,0);

    int cnt = 1;
    while((texto.size()>=1 && texto[0]!='#') && cnt<maxStep){
        retorno+=texto;
        texto = lerTexto(path,cnt++);
    }

    return retorno;
}

bool escreverTexto(string path,string content,int mode){

    /**
    A variável mode vai ser usada para saber se eh uma operacao
    de sobrescrita ou anexo.
    1 - Sobrescrita
    2 - Append
    **/

    ofstream file;

    if(mode == SOBRESCRITA){
        file.open(path);
    }else{
        file.open(path,std::ios_base::app);
    }

    if(!file.is_open()) return false;
    if(content == "") return false;

    file<<content;
    file<<"\n#\n";
    file.close();
    return true;
}

/*
    //writing test
    int n;
    cin>>n;
    cin.ignore();
    for(int i = 0;i<n;++i){
        string s;
        getline(cin,s);
        escreverTexto(PATHTW,s,APPEND);
    }
*/

/*
    //escrever historias
    while(true){

        string titulo;
        cout<<"Nome do Arquivo: ";
        getline(cin,titulo);
        cout<<"Conteudo:"<<endl;
        string content = "";
        while(true){
            string enunciado;
            getline(cin,enunciado);
            if(enunciado[0] == '#') break;
            content+=enunciado+"\n";
        }
        content.pop_back();
        escreverTexto((string)PATHHISTORIA+titulo+".txt",content,SOBRESCRITA);
    }
*/

#endif // LEITOR_DE_ARQUIVOS_CPP_INCLUDED
