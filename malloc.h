#ifndef __MALLOC__
#define __MALLOC__

#include <stddef.h>

void *malloc(size_t size);
void free(void *p);

void *calloc(size_t number, size_t size);

void *realloc(void *p, size_t size);


#endif