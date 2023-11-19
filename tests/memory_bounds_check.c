#include <stdlib.h>
#include <string.h>
#include <assert.h>

#define MAX_SIZE    4
#define MB          (1024*1024)     //  1MB
#define KB          (1024)          //  1KB

typedef unsigned int    uint32;
typedef unsigned char   uint8;
typedef struct data
{
    uint32 offset;
    uint32 array[MAX_SIZE];
} DATA;

uint8 data_memory[8 * MB];

void klee_make_symbolic_range(void* addr, unsigned int offset, unsigned int nbytes, const char* name)
{
    assert(addr != NULL && "Must pass a valid addr");
    assert(name != NULL && "Must pass a valid name");
    if(nbytes > 0)
    {
        void* start = addr + offset;
        klee_check_memory_access(start, nbytes);
        void* symbolic_data = malloc(nbytes);
        klee_make_symbolic(symbolic_data, nbytes, name);
        memcpy(start, symbolic_data, nbytes);
        free(symbolic_data);
    }
}

void test(void)
{
    DATA *data = (DATA *)(&data_memory[500 * KB]);

    klee_make_symbolic_range(&data->offset, 0, sizeof(uint32), "data->offset");
    klee_make_symbolic_range(data->array, 0, sizeof(data->array), "data->array");

    klee_assume(data->offset == 0 | data->offset == 1 | data->offset == 2 | data->offset == 3);   //  Cause 100% memory usage + very slow klee operation
//    klee_assume(data->offset == 0 || data->offset == 1 || data->offset == 2 || data->offset == 3);  //  Works well

    if ( *(&data->array[0] + data->offset) == 'a'  )
    {
        printf("true\n");
    }
    else
    {
        printf("false\n");
    }
}
