#include <stdio.h>
#include "golib.h"

// force gcc to link in go runtime (may be a better solution than this)
void dummy() {
    PrintBye();
}

int main() {}
