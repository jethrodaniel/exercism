#include <stdio.h>
#include "word_count.h"

int word_count(const char *input_text, word_count_word_t * words)
{
    printf("input_text: %s", input_text);
    printf("words->text: %s", words->text);
    printf("words->count: %i", words->count);
    printf("\n");

    return 0;
}

