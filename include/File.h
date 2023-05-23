#pragma once
#include <string>

class File{
    public:
    File(std::string a);//konstruktor zwykly
    File(const File& a);//konstruktor kopiujacy
    virtual ~File(){}//destruktor
    std::string GetName()const;//zeby pobrac nazwe pliku
    virtual void print(int ile=0)const;//wypisuje, ile oznacza jak duzo razy sie kropka wypisze
    virtual File* clone()const;//robi kopie pliku
    void rename(std::string a);//zmienia nazwe
    virtual void search(std::string a, std::string b);//nie robi totalnie nic

    protected:
    std::string _name;//nazwa
};