#include <string>
#include <iostream>
#include "File.h"

File::File(std::string a) : _name(a){}

File::File(const File& a) : _name(a._name){}

std::string File::GetName()const{
    return this->_name;
}

void File::print(int ile)const{
    for(int i=0;i<ile;i++)std::cout<<"..";
    std::cout<<GetName()<<std::endl;
}

File* File::clone()const{
    File* tmp=new File(_name);
    return tmp;
}

void File::rename(std::string a){
    _name=a;
}

void File::search(std::string a, std::string b){
    return;
}