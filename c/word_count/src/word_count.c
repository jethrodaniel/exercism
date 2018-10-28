#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "word_count.h"


int word_count(const char *input_text, word_count_word_t *words)
{
  printf("input_text: %s\n", input_text);
  printf("words->text: %s\n", words->text);
  printf("words->count: %i\n", words->count);

  char *delims = " ";

  char *input_dup = malloc(strlen(input_text) + 1);
  strcpy(input_dup, input_text);

  char *word = strtok(input_dup, delims);
  while (word != NULL) {
    printf("%s\n", word);
    word = strtok(NULL, delims);
  }

  free(input_dup);

  return 0;
}
