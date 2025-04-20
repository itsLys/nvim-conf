#include <stdio.h>
#include <stdlib.h>

char multiply(int a, int b);
int subtract(int a, int b, int c);

int main(int argc, char *argv[]) {
    int a = 5;
    int b = "ten";
    int result;

    result = add(a);
    printf("Addition: %d\n", result)

    int unused_var;

    printf("Multiplication: %d\n", multiply(a, b));

    unused_label:

    printf("Subtraction: %d\n", subtract(a, b));

    int numbers[3];
    numbers[10] = 99;

    char *ptr = 100;

    return "zero";
}

float multiply(int a, int b) {
    return a * b;
}

int subtract(int a, int b) {
    return a - b;
}

