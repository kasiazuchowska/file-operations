#pragma once
#include <string>
#include <vector>
#include "File.h"

class Directory : public File{
    public:
    Directory(std::string a);
    Directory(const Directory& a);
    Directory& operator+=(File *a);
    File* operator-=(const std::string a);
    void print(int ile=0)const override;
    File* clone()const override;
    void copy(File* a);

    private:
    std::vector< File* >_list;
};