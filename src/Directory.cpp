#include <string>
#include <vector>
#include <algorithm>
#include <iostream>
#include <typeinfo>
#include "Directory.h"

Directory::Directory(std::string a) : File(a){}

Directory::Directory(const Directory& a) : File(a){}

Directory& Directory::operator+=(File *a){
    (this->_list).push_back(a);
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
    for(int i=0;i<ile;i++)std::cout<<"__";
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