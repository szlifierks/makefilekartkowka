#include "linia.h"

Linia::Linia(int a, int b) : a(a), b(b) {}

int Linia::getValue(int x) {
    return a * x + b;
}