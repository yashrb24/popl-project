#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>

#include "rstruct.h"

int main() {
  void* handle;
  RStruct* (*data_new)(void);
  void (*data_free)(RStruct*);
  char* error;

  printf("Loading librstruct.so...\n");
  handle = dlopen(
    "librstruct.so",
    RTLD_LAZY
  );
  if (!handle) {
    fprintf(stderr, "%s\n", dlerror());
    exit(EXIT_FAILURE);
  }
  printf("Done.\n\n");

  dlerror();

  data_new = (RStruct* (*)(void)) dlsym(handle, "data_new");
  error = dlerror();
  if (error != NULL) {
    fprintf(stderr, "%s\n", error);
    exit(EXIT_FAILURE);
  }

  dlerror();

  data_free = (void (*)(RStruct*)) dlsym(handle, "data_free");
  error = dlerror();
  if (error != NULL) {
    fprintf(stderr, "%s\n", error);
    exit(EXIT_FAILURE);
  }

  printf("Calling data_new() from main.c...\n");
  RStruct* data = (*data_new)();

  printf("\nBack inside main.c. Printing results...\n");
  printf("Name: %s\nValue: %d\n", data->name, data->value.int_);

  printf("\nFreeing the RStruct data...\n");
  (*data_free)(data);

  dlclose(handle);
  return EXIT_SUCCESS;
}
