#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <assert.h>

#define MAX_SIZE    4
#define MB          (1024 * 1024)  // 1MB
#define KB          (1024)         // 1KB

typedef unsigned int uint32;
typedef unsigned char uint8;

typedef struct data {
    uint32 offset;
    uint32 array[MAX_SIZE];
} DATA;

uint8 data_memory[8 * MB];

void klee_make_symbolic_range(void* addr, unsigned int offset, unsigned int nbytes, const char* name) {
    assert(addr != NULL && "Must pass a valid addr");
    assert(name != NULL && "Must pass a valid name");
    
    if (nbytes > 0) {
        void* start = addr + offset;
        // Assume klee_check_memory_access() is a function to check memory access for symbolic execution
        klee_check_memory_access(start, nbytes);
        
        void* symbolic_data = malloc(nbytes);
        klee_make_symbolic(symbolic_data, nbytes, name);
        memcpy(start, symbolic_data, nbytes);
        free(symbolic_data);
    }
}

void test(void) {
    DATA* data = (DATA*)(&data_memory[500 * KB]);

    // Make the offset and array symbolic
    klee_make_symbolic_range(&data->offset, 0, sizeof(uint32), "data->offset");
    klee_make_symbolic_range(data->array, 0, sizeof(data->array), "data->array");

    // Assuming the offset is within a specific range (0, 1, 2, 3)
    klee_assume(data->offset == 0 | data->offset == 1 | data->offset == 2 | data->offset == 3);
    // The commented line above seems to be causing very slow KLEE operation due to 100% memory usage

    // Check if the character at the specified offset in the array is 'a'
    if (*(&data->array[0] + data->offset) == 'a') {
        printf("true\n");
    } else {
        printf("false\n");
    }
}
