#pragma once
#include <string>
#include <vector>
#include "File.h"
#include "Symlink.h"

class Directory : public File{
    public:
    Directory(std::string a);//konstruktor
    Directory(const Directory& a);//konstruktor kopiujacy
    ~Directory();
    Directory& operator+=(File *a);//dodaje plik do katalogu
    Directory& operator+=(Symlink* a);//dodaje link do pliku do katalogu
    File* operator-=(const std::string a);//usuwa plik z katalogu i go zwraca
    void print(int ile=0)const override;//wypisuje wszystko ladnie, ile mowi ile ma byc kropek
    File* clone()const override;//tworzy klona katalogu
    void copy(File* a);//kopiuje plik/katalog a do tego katalogu
    void search(std::string a, std::string b=" -");//znajduje wszystkie pliki/katalogi o nazwie a, w stringu b jest sciezka do obecnego miejsca

    private:
    std::vector< File* >_list;//lista tego co jest w katalogu
};