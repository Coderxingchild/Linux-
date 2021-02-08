#include<stdio.h>
#include<string.h>
void test()
{
    printf("this is test function\n");
    return;
}
int main()
{
    printf("hello bit!");
    int i=0;
    for(i=0;i<5;++i){
        printf("--------\n");
    }
    test();
    printf("over!\n");
    return 0;
}
