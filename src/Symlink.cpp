#include <string>
#include "Symlink.h"

Symlink::Symlink(std::string a, File* f) : _name(a), _f(f){}

std::string Symlink::GetName()const{
    return this->_name;
}

File* Symlink::GetFile()const{
    return this->_f;
}