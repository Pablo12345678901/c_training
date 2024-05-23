#include <stdio.h>

inline int foo(){
return 3;
}

void g() {
printf("foo called from g: return value = %d, address = %p\n", foo(), &foo);
}

// b.c
/*
#include <stdio.h>

inline int foo(){
return 3;
}
*/

void g();

int main() {
printf("foo called from main: return value = %d, address = %p\n", foo(), &foo);
g();
}
