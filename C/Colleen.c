#include <stdio.h>

/*
	Outside comment
*/

void additional_function()
{
	char *srcs = "#include <stdio.h>%c%c/*%c	Outside comment%c*/%c%cvoid additional_function()%c{%c	char *srcs = %c%s%c;%c	printf(srcs, 10, 10, 10, 10, 10, 10, 10, 10, 34, srcs, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint	main()%c{%c	/*%c		Inside comment%c	*/%c	additional_function();%c	return (0);%c}";
	printf(srcs, 10, 10, 10, 10, 10, 10, 10, 10, 34, srcs, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int	main()
{
	/*
		Inside comment
	*/
	additional_function();
	return (0);
}