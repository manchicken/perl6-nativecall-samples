#include <stdlib.h>
#include <strings.h>
#include <stdio.h>

typedef struct a_string_and_an_int32_t_ {
  char *a_string;
  int32_t an_int32;
} a_string_and_an_int32_t;

void init_struct(a_string_and_an_int32_t *target, char *str, int32_t int32) {
  target->an_int32 = int32;
  strcpy(target->a_string, str);

  return;
}

char *string_from_struct(a_string_and_an_int32_t *target) {
  return target->a_string;
}

int int32_from_struct(a_string_and_an_int32_t *target) {
  return target->an_int32;
}

void update_string_for_struct(a_string_and_an_int32_t *target, char *str) {
  strcpy(target->a_string, str);
}
