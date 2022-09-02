#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#define INT_MAIN(X) int main() {X (fd, #X")\n");close(fd);}
#define OPEN_FLAGS O_WRONLY | O_CREAT | O_TRUNC
#define PERM_FLAGS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH

/*
	A comment
*/

INT_MAIN(int fd; fd = open("Grace_kid.c", OPEN_FLAGS, PERM_FLAGS);dprintf(fd, "#include <stdio.h>\n#include <unistd.h>\n#include <fcntl.h>\n#define INT_MAIN(X) int main() {X (fd, #X\")\\n\");close(fd);}\n#define OPEN_FLAGS O_WRONLY | O_CREAT | O_TRUNC\n#define PERM_FLAGS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH\n\n/*\n	A comment\n*/\n\nINT_MAIN(");dprintf)
