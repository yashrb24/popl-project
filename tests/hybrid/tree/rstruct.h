#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef enum Value_Tag {
  _Int,
  _Float,
} Value_Tag;

typedef struct Value {
  Value_Tag tag;
  union {
    struct {
      int32_t int_;
    };
    struct {
      double float_;
    };
  };
} Value;

typedef struct RStruct {
  const char *name;
  struct Value value;
} RStruct;

struct RStruct *data_new(void);

void data_free(struct RStruct *ptr);
