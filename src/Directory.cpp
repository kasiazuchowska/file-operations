#include <string>
#include <vector>
#include <iostream>
#include <typeinfo>
#include "Directory.h"

Directory::Directory(std::string a) : File(a){}

Directory::Directory(const Directory& a) : File(a){}

Directory::~Directory(){
    for(auto i : _list)delete i;
    //delete _list;
}

Directory& Directory::operator+=(File *a){
    (this->_list).push_back(a);
    return *this;
}

Directory& Directory::operator+=(Symlink* a){
    std::string x = a->GetName() + " -> " + a->GetFile()->GetName();
    File* tmp = new File(x);
    (this->_list).push_back(tmp);
    return *this;
}

File* Directory::operator-=(const std::string a){
    std::vector< File* >::iterator pos=_list.begin();
    for(auto i : _list){
        if(i->GetName()==a){
            _list.erase(pos);
            return i;
        }
        pos++;
    }
    return nullptr;
}

void Directory::print(int ile)const{
    for(int i=0;i<ile;i++)std::cout<<"..";
    std::cout<<GetName()<<std::endl;
    for(auto i : _list){
        i->print(ile+1);
    }
}

File* Directory::clone()const{
    Directory* tmp = new Directory(this->GetName());
    for(auto i : _list){
        *tmp += i->clone();
    }
    return tmp;
}

void Directory::copy(File* a){
    *this += a->clone();
}

void Directory::search(std::string a, std::string b){
    if(b==" -")std::cout<< a << ":" << std::endl;
    for(auto i : _list){
        if(a==i->GetName()){
            std::cout << b << this->GetName() << "/" << i->GetName() << std::endl;
            //b+=" ";
        }
        i->search(a,b+this->GetName()+"/");
    }
}