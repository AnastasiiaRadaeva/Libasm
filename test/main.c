#include <stdio.h>
#include "../libasm.h"
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
	char a[7];
	char c[6] = "tghyg";
	char f[6] = "tghyg";
	printf("_______________FT_STRLEN_______________\nMY_Result: %i\nST_Result: %zi\n\n", ft_strlen(",23 "), strlen(",23 "));
	printf("_______________FT_STRCMP_______________\nMY_Result: %i\nST_Result: %i\n\n", ft_strcmp("Hello", "Helloq"), strcmp("Hello", "Helloq"));
	printf("_______________FT_WRITE________________\nMY_Result: %zi\nST_Result: %zi\n\n", ft_write(1, "Hello\n", 6), write(1, "Hello\n", 6));
	printf("_______________FT_READ_________________\nMY_Result: %zi\nWord: %s\n\n", ft_read(0, a, 2), a);
	printf("_______________FT_STRCPY_______________\nMY_Result: %s\nST_Result: %s\n\n", ft_strcpy(c, "Helll"), strcpy(f, "Helll"));
	char *str = ft_strdup("Doll");
	char *str_1 = strdup("Doll");
	printf("_______________FT_STRDUP_______________\nMY_Result: %s\nST_Result: %s\n\n", str, str_1);
	free(str);
	return (0);
}
