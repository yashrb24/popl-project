#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <klee/klee.h>
#include <stdio.h>

#define MAX_SIZE    4
#define KB          (1024)          //  1KB
#define block       (64)
typedef unsigned int    uint32;
typedef unsigned char   uint8;
typedef struct data     // custom struct to test out custom_malloc
{
    uint32 offset;
    uint32 array[MAX_SIZE];
} DATA;

uint8 data_memory[8 * KB];

void check(void* start, unsigned int size_bytes, const char* name)  // checks if memory allocated is out of bounds and copies the data from it if not
{
    if(size_bytes > 0)
    {
        klee_check_memory_access(start, size_bytes); 
        void* symbolic_data = malloc(size_bytes);
        klee_make_symbolic(symbolic_data, size_bytes, name);
        memcpy(start, symbolic_data, size_bytes);
        free(symbolic_data);
    }
}

void* custom_malloc(int size){  // tries to allocate at size*block location of data_memory
    DATA *data = (DATA *)(&data_memory[size * block]);

    check(&data->offset, sizeof(uint32), "data->offset");
    check(data->array, sizeof(data->array), "data->array");

    klee_assume(data->offset == 0 || data->offset == 1 || data->offset == 2 || data->offset == 3);

    return data;
}

int main()
{  
    DATA *data = (DATA *) custom_malloc(500);
    if ( *(&data->array[0] + data->offset) == 'a'  ) // should execute this if custom_malloc succeeds
    {
        printf("true\n");
    }
    else
    {
        printf("false\n");
    }
}
