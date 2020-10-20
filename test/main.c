#include <stdio.h>
#include "../libasm.h"

int main(void)
{
	char a[7];
	char c[6] = "tghyg";
	printf("FT_STRLEN\nResult: %i\n\n", ft_strlen(""));
	printf("FT_STRCMP\nResult: %i\n\n", ft_strcmp("Helloq", "Hello"));
	printf("FT_WRITE\nResult: %zi\n\n", ft_write(1, "Hello\n", 6));
	printf("FT_READ\nResult: %zi\nWord: %s\n\n", ft_read(0, a, 6), a);
	printf("FT_STRCPY\nResult: %s\n\n", ft_strcpy(c, "He"));
	char *str = ft_strdup("D");
	printf("FT_STRDUP\nResult: %s\n\n", str);
	return (0);
}
