/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abellion <abellion@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/22 16:53:38 by abellion          #+#    #+#             */
/*   Updated: 2015/03/22 17:29:06 by abellion         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include "libftasm.h"

void	part1_tests(void)
{
	char	buf[11];
	char	buf2[11];

	printf("****		FT_BZERO TESTS		*****\n\n");
	ft_bzero(buf, 11);
	ft_memcpy(buf, "Antoine", 7);
	ft_bzero(buf, 5);
	printf("Put 5 zero byte into 'Antoine' string.\n");
	printf("--> STRING : %s\n", buf);
	printf("--> STRING + 5 : %s\n", &buf[5]);

	printf("\n\n*****	FT_STRCAT TESTS		*****\n\n");
	ft_bzero(buf2, 11);
	ft_bzero(buf, 11);
	ft_memcpy(buf, "Antoine", 7);
	ft_memcpy(buf2, "Leo", 3);
	ft_strcat(buf, buf2);
	printf("Concat 'Antoine' with 'Leo' strings.\n");
	printf("--> STRING : %s\n", buf);

	printf("\n\n*****	FT_ISALPHA TESTS	*****\n\n");
	printf("--> Test with 'a' : %d\n", ft_isalpha('a'));
	printf("--> Test with 'A' : %d\n", ft_isalpha('A'));
	printf("--> Test with 'z' : %d\n", ft_isalpha('z'));
	printf("--> Test with 'Z' : %d\n", ft_isalpha('Z'));
	printf("--> Test with 'h' : %d\n", ft_isalpha('h'));
	printf("--> Test with 'H' : %d\n", ft_isalpha('H'));
	printf("--> Test with '~' : %d\n", ft_isalpha('~'));
	printf("--> Test with '5' : %d\n", ft_isalpha('5'));
	printf("--> Test with '/' : %d\n", ft_isalpha('/'));

	printf("\n\n*****	FT_ISDIGIT TESTS	*****\n\n");
	printf("--> Test with '0' : %d\n", ft_isdigit('0'));
	printf("--> Test with '2' : %d\n", ft_isdigit('2'));
	printf("--> Test with '4' : %d\n", ft_isdigit('4'));
	printf("--> Test with '8' : %d\n", ft_isdigit('8'));
	printf("--> Test with '9' : %d\n", ft_isdigit('9'));
	printf("--> Test with 'a' : %d\n", ft_isdigit('a'));
	printf("--> Test with '~' : %d\n", ft_isdigit('~'));
	printf("--> Test with '\\' : %d\n", ft_isdigit('\\'));
	
	printf("\n\n*****	FT_ISALNUM TESTS	*****\n\n");
	printf("--> Test with '0' : %d\n", ft_isalnum('0'));
	printf("--> Test with '2' : %d\n", ft_isalnum('2'));
	printf("--> Test with '4' : %d\n", ft_isalnum('4'));
	printf("--> Test with '8' : %d\n", ft_isalnum('8'));
	printf("--> Test with '9' : %d\n", ft_isalnum('9'));
	printf("--> Test with 'a' : %d\n", ft_isalnum('a'));
	printf("--> Test with 'A' : %d\n", ft_isalnum('A'));
	printf("--> Test with 'z' : %d\n", ft_isalnum('z'));
	printf("--> Test with 'Z' : %d\n", ft_isalnum('Z'));
	printf("--> Test with '[' : %d\n", ft_isalnum('['));
	printf("--> Test with ':' : %d\n", ft_isalnum(':'));
	printf("--> Test with '@' : %d\n", ft_isalnum('@'));
	
	printf("\n\n*****	FT_ISASCII TESTS	*****\n\n");
	printf("--> Test with 0 (nul) : %d\n", ft_isascii(0));
	printf("--> Test with 127 (del) : %d\n", ft_isascii(127));
	printf("--> Test with '!' : %d\n", ft_isascii('!'));
	printf("--> Test with 'B' : %d\n", ft_isascii('B'));
	printf("--> Test with '*' : %d\n", ft_isascii('*'));
	printf("--> Test with 130 : %d\n", ft_isascii(130));
	printf("--> Test with -5 : %d\n", ft_isascii(-5));

	printf("\n\n*****	FT_ISPRINT TESTS	*****\n\n");
	printf("--> Test with 32 (space) : %d\n", ft_isprint(' '));
	printf("--> Test with '~' : %d\n", ft_isprint('~'));
	printf("--> Test with '(' : %d\n", ft_isprint('('));
	printf("--> Test with '|' : %d\n", ft_isprint('|'));
	printf("--> Test with 'H' : %d\n", ft_isprint('H'));
	printf("--> Test with '<' : %d\n", ft_isprint('<'));
	printf("--> Test with 26 (sub) : %d\n", ft_isprint(26));
	printf("--> Test with 127 (del) : %d\n", ft_isprint(127));
	printf("--> Test with -42 : %d\n", ft_isprint(-42));

	printf("\n\n*****	FT_TOUPPER TESTS	*****\n\n");
	printf("--> Test with 'a' : %c\n", ft_toupper('a'));
	printf("--> Test with 'z' : %c\n", ft_toupper('z'));
	printf("--> Test with 'h' : %c\n", ft_toupper('h'));
	printf("--> Test with 'A' : %c\n", ft_toupper('A'));
	printf("--> Test with 'Z' : %c\n", ft_toupper('Z'));
	printf("--> Test with 'H' : %c\n", ft_toupper('H'));
	printf("--> Test with '5' : %c\n", ft_toupper('5'));
	printf("--> Test with '|' : %c\n", ft_toupper('|'));
	printf("--> Test with '~' : %c\n", ft_toupper('~'));

	printf("\n\n*****	FT_TOLOWER TESTS	*****\n\n");
	printf("--> Test with 'A' : %c\n", ft_tolower('A'));
	printf("--> Test with 'Z' : %c\n", ft_tolower('Z'));
	printf("--> Test with 'H' : %c\n", ft_tolower('H'));
	printf("--> Test with 'a' : %c\n", ft_tolower('a'));
	printf("--> Test with 'z' : %c\n", ft_tolower('z'));
	printf("--> Test with 'h' : %c\n", ft_tolower('h'));
	printf("--> Test with '5' : %c\n", ft_tolower('5'));
	printf("--> Test with '|' : %c\n", ft_tolower('|'));
	printf("--> Test with '~' : %c\n", ft_tolower('~'));

	printf("\n\n*****	FT_PUTS TESTS		*****\n\n");
	printf("--> Put 'Antoine', 'Antoine Bellion' and '42' strings : \n");
	ft_puts("Antoine");
	ft_puts("Antoine Bellion");
	ft_puts("42");
}

void	part2_tests(void)
{
	char	buf[10];
	char	buf2[10];
	char	*s1;
	char	*s2;

	printf("\n\n*****	FT_STRLEN TESTS		*****\n\n");
	printf("--> Length of 'Antoine' string : %d\n", (int)ft_strlen("Antoine"));
	printf("--> Length of 'Antoine Bellion' string : %d\n", (int)ft_strlen("Antoine Bellion"));
	printf("--> Length of '' string : %d\n", (int)ft_strlen(""));

	printf("\n\n*****	FT_MEMSET TESTS		*****\n\n");
	ft_memset(buf, '\0', 10);
	ft_memset(buf, 'x', 5);
	printf("--> Put 5 'x' into the buffer : %s\n", buf);
	ft_memset(buf, 'a', 2);
	printf("--> Put 2 'a' into the buffer : %s\n", buf);
	ft_memset(buf, 'A', 3);
	printf("--> Put 3 'A' into the buffer : %s\n", buf);

	printf("\n\n*****	FT_MEMCPY TESTS		*****\n\n");
	ft_memset(buf2, '\0', 10);
	ft_memcpy(buf2, buf, 5);
	printf("--> CPY the 5 first bytes of the last buffer into another : %s\n", buf2);
	ft_memset(buf, '\0', 10);
	ft_memcpy(buf, buf2, 2);
	printf("--> CPY the 2 first bytes of the last buffer into another : %s\n", buf);

	printf("\n\n*****	FT_STRDUP TESTS		*****\n\n");
	s1 = strdup("Antoine");
	s2 = ft_strdup(s1);
	free(s1);
	s1 = NULL;
	printf("--> Dup 'Antoine' string : %s\n", s2);
	s2 = ft_strdup(NULL);
	printf("--> Dup 'NULL' : %s\n", s2);
}

void	part3_tests(void)
{
	int		fd;

	printf("\n\n*****	FT_CAT TESTS		*****\n\n");
	printf("--> Cat ft_strlen file : \n");
	fd = open("ft_strlen.s", O_RDONLY);
	ft_cat(fd);
	close(fd);
}

void	partbonus_tests(void)
{
	char	*s1;
	int		ret1;
	int		ret2;

	printf("\n\n*****	FT_STRCHR TESTS		*****\n\n");
	s1 = ft_strdup("Antoine");
	printf("--> Search 'A' char in 'Antoine' string : %s\n", ft_strchr(s1, 'A'));
	printf("--> Search 'e' char in 'Antoine' string : %s\n", ft_strchr(s1, 'e'));
	printf("--> Search 't' char in 'Antoine' string : %s\n", ft_strchr(s1, 't'));
	printf("--> Search 'z' char in 'Antoine' string : %s\n", ft_strchr(s1, 'z'));

	printf("\n\n*****	FT_STRRCHR TESTS	*****\n\n");
	s1 = ft_strdup("bonbon");
	printf("--> Search 'b' char in 'bonbon' string :  %s\n", ft_strrchr(s1, 'b'));
	printf("--> Search 'n' char in 'bonbon' string :  %s\n", ft_strrchr(s1, 'n'));
	printf("--> Search 't' char in 'bonbon' string :  %s\n", ft_strrchr(s1, 't'));
	printf("--> Search 'z' char in 'bonbon' string :  %s\n", ft_strrchr(s1, 'z'));

	printf("\n\n*****	FT_STRCMP TESTS		*****\n\n");
	ret1 = strcmp("Antoine", "Antoine");
	ret2 = ft_strcmp("Antoine", "Antoine");
	printf("--> CMP 'Antoine' with 'Antoine' (real ; mine) : %d ; %d\n", ret1, ret2);
	ret1 = strcmp("Leo", "Leo");
	ret2 = ft_strcmp("Leo", "Leo");
	printf("--> CMP 'Leo' with 'Leo' (real ; mine) : %d ; %d\n", ret1, ret2);
	ret1 = strcmp("", "");
	ret2 = ft_strcmp("", "");
	printf("--> CMP '' with '' (real ; mine) : %d ; %d\n", ret1, ret2);
	ret1 = strcmp("Lea", "Leo");
	ret2 = ft_strcmp("Lea", "Leo");
	printf("--> CMP 'Lea' with 'Leo' (real ; mine) : %d ; %d\n", ret1, ret2);
	ret1 = strcmp("Theo", "Leo");
	ret2 = ft_strcmp("Theo", "Leo");
	printf("--> CMP 'Theo' with 'Leo' (real ; mine) : %d ; %d\n", ret1, ret2);

	printf("\n\n*****	FT_STREQU TESTS		*****\n\n");
	printf("--> CMP 'Antoine' with 'Antoine' : %d\n", ft_strequ("Antoine", "Antoine"));
	printf("--> CMP 'Leo' with 'Leo' : %d\n", ft_strequ("Leo", "Leo"));
	printf("--> CMP '' with '' : %d\n", ft_strequ("", ""));
	printf("--> CMP 'Lea' with 'Leo' : %d\n", ft_strequ("Lea", "Leo"));
	printf("--> CMP 'Theo' with 'Leo' : %d\n", ft_strequ("Theo", "Leo"));

	printf("\n\n*****	FT_STRNEW TESTS		*****\n\n");
	free(s1);
	s1 = NULL;
	s1 = ft_strnew(10);
	printf("--> Strnew S1 after free it and set it to NULL : %s\n", s1);
	printf("--> Put into S1, 'Antoine' string : %s\n", ft_memcpy(s1, "Antoine", 7));

	printf("\n\n*****	FT_STRCLR TESTS		*****\n\n");
	s1 = ft_strdup("Antoine");
	ft_strclr(s1);
	printf("--> CLR 'Antoine' string : %s\n", s1);

	printf("\n\n*****	FT_ATOI TESTS		*****\n\n");
	printf("--> Convert '5' : %d\n", ft_atoi("5"));
	printf("--> Convert '42' : %d\n", ft_atoi("42"));
	printf("--> Convert '163' : %d\n", ft_atoi("163"));
	printf("--> Convert '-42' : %d\n", ft_atoi("-42"));
	printf("--> Convert '-163' : %d\n", ft_atoi("-163"));
}

int		main(int ac, char **av)
{
	if (ac != 2)
	{
		printf("Usage :\nPart1 -> ./a.out 1\nPart2 -> ./a.out 2\nPart3 -> ./a.out 3\nPart bonus -> ./a.out 4\n");
		return (0);
	}
	if (!strcmp(av[1], "1"))
		part1_tests();
	else if (!strcmp(av[1], "2"))
		part2_tests();
	else if (!ft_strcmp(av[1], "3"))
		part3_tests();
	else if (!ft_strcmp(av[1], "4"))
		partbonus_tests();
	return (0);
}
