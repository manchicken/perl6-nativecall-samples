#include <stdlib.h>
#include <strings.h>
#include <stdio.h>

typedef struct one_string_and_one_int32_t_ {
  char *one_string;
  int32_t one_int32;
} one_string_and_one_int32_t;

void init_struct(one_string_and_one_int32_t *target, char *str, int32_t int32) {
  target->one_int32 = int32;
  strcpy(target->one_string, str);

  return;
}

char *string_from_struct(one_string_and_one_int32_t *target) {
  return target->one_string;
}

int int32_from_struct(one_string_and_one_int32_t *target) {
  return target->one_int32;
}

void update_string_for_struct(one_string_and_one_int32_t *target, char *str) {
  strcpy(target->one_string, str);
}
