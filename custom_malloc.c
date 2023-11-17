#include <stdio.h>
#include <stdlib.h>

// Define a global buffer with a fixed size
#define BUFFER_SIZE 99999
char globalBuffer[BUFFER_SIZE];

// Define a structure to represent a memory allocation
typedef struct {
    void* startAddress;
    size_t size;
} MemoryAllocation;

// Array to store information about allocated regions
MemoryAllocation allocatedRegions[BUFFER_SIZE];
size_t numAllocatedRegions = 0;

// Variable to keep track of the current allocation position
size_t allocationPosition = 0;

// Function to allocate memory from the global buffer
void* globalMalloc(size_t size) {
    // Check if there is enough space in the buffer
    if ((allocationPosition + size) <= BUFFER_SIZE) {
        // Check if the requested memory overlaps with any existing allocations
        for (size_t i = 0; i <= numAllocatedRegions; ++i) {
            if (
                (allocationPosition >= (size_t)allocatedRegions[i].startAddress + allocatedRegions[i].size) ||
                ((allocationPosition + size) <= (size_t)allocatedRegions[i].startAddress)
            ) {
                // No overlap, it's safe to allocate in this region
                // Calculate the starting address of the allocated memory
                void* allocatedMemory = (void*)&globalBuffer[allocationPosition];

                // Store information about the allocated region
                allocatedRegions[numAllocatedRegions].startAddress = allocatedMemory;
                allocatedRegions[numAllocatedRegions].size = size;
                numAllocatedRegions++;

                // Update the allocation position
                allocationPosition += size;

                return allocatedMemory;
            }
        }

        // If the loop completes without finding an appropriate region, allocation failed
        fprintf(stderr, "Error: Unable to find a suitable region for allocation.\n");
        return NULL;
    } else {
        // Allocation failed, return NULL or handle the error as needed
        return NULL;
    }
}

// Function to free allocated memory
void globalFree(void* ptr) {
    // Find the corresponding allocated region
    for (size_t i = 0; i < numAllocatedRegions; ++i) {
        if (allocatedRegions[i].startAddress == ptr) {
            // Clear the allocated region
            allocatedRegions[i].startAddress = NULL;
            allocatedRegions[i].size = 0;

            // Optionally, compact the array by moving later entries to fill the gap
            // (This step is omitted for simplicity in this example)

            return;
        }
    }

    // If the pointer was not found, it might not have been allocated by globalMalloc
    // Handle this case as needed (e.g., log an error or take appropriate action)
    fprintf(stderr, "Error: Attempting to free unallocated memory.\n");
}

int main() {
    // Example usage
    int* dynamicArray1 = (int*)globalMalloc(5 * sizeof(int));
    int* dynamicArray2 = (int*)globalMalloc(3 * sizeof(int));

    // Use the allocated memory
    for (int i = 0; i < 5; ++i) {
        dynamicArray1[i] = i * 2;
    }

    for (int i = 0; i < 3; ++i) {
        dynamicArray2[i] = i * 3;
    }

    // Print the values
    for (int i = 0; i < 5; ++i) {
        printf("%d ", dynamicArray1[i]);
    }

    printf("\n");

    for (int i = 0; i < 3; ++i) {
        printf("%d ", dynamicArray2[i]);
    }

    // Free allocated memory
    globalFree(dynamicArray1);
    globalFree(dynamicArray2);

    // No need to free; global buffer persists throughout the program's execution

    return 0;
}