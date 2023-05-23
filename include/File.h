#pragma once
#include <string>

class File{
    public:
    File(std::string a);
    File(const File& a);
    virtual ~File(){}
    std::string GetName()const;
    virtual void print(int ile=0)const;
    virtual File* clone()const;
    void rename(std::string a);

    protected:
    std::string _name;
};