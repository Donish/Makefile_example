#include <iostream>
#include <string>
#include "mystring.h"

int main()
{
    std::string s;
    std::cin >> s;

    int len = 0;
    len = length(s);
    std::cout << len << "\n";

    return 0;
}