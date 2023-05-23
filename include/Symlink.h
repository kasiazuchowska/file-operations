#pragma once
#include <string>
#include "File.h"

class Symlink{
    public:
    Symlink(std::string a, File* f);//konstruktor
    ~Symlink(){delete _f;}//destruktor
    std::string GetName()const;//daje nazwe
    File* GetFile()const;//daje plik
    private:
    std::string _name;//nazwa linku
    File* _f;//wskaznik do tego pliku z linku
};