#include "basic.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double arithmetic_mean(int a, int b) {
    return (a + b) / 2;
}

double geometric_mean(int a, int b) {
    return sqrt(a * b);
}

double harmonic_mean(int a, int b) {
    return 1 / ((1 / a) + (1 / b));
}

double quadratic_mean(int a, int b) {
    return sqrt((pow(a, 2) + pow(b, 2)) / 2);
}