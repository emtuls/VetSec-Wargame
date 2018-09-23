#include <stdio.h>

int main(int argc, char *argv[])
{
    volatile int modified;
    char buffer[64];

    modified = 0;
    gets(buffer);

    if(modified !=0) {
        printf("You modified the variable\n");
    } else {
        printf("You did not manage to modify the varible. Try again.\n");
        }
}
