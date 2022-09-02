#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#define NAME "Sully_%d.c"
#define GCC "gcc %s -o Sully_kid;./Sully_kid;rm -f Sully_kid"
void run_program(char *name){char buff[512];sprintf(buff,GCC,name);system(buff);}
void getname(char *buff,int n){sprintf(buff,NAME,n);}
void geti(int *i){char name[512];getname(name,*i);if(access(name,F_OK)==-1){(*i)++;}}
#define INT_FUNC(x) x(fd,"%s", #x")\n");close(fd);run_program(name);return (0);}
int main() { int i = 5;
if (i<=0)return(0);geti(&i);char name[512];getname(name,i-1);
INT_FUNC(int fd; fd = open(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);dprintf(fd, "#include <stdio.h>\n#include <unistd.h>\n#include <fcntl.h>\n#include <stdlib.h>\n#define NAME \"Sully_%%d.c\"\n#define GCC \"gcc %%s -o Sully_kid;./Sully_kid;rm -f Sully_kid\"\nvoid run_program(char *name){char buff[512];sprintf(buff,GCC,name);system(buff);}\nvoid getname(char *buff,int n){sprintf(buff,NAME,n);}\nvoid geti(int *i){char name[512];getname(name,*i);if(access(name,F_OK)==-1){(*i)++;}}\n#define INT_FUNC(x) x(fd,\"%%s\", #x\")\\n\");close(fd);run_program(name);return (0);}\nint main() { int i = %d;\nif (i<=0)return(0);geti(&i);char name[512];getname(name,i-1);\nINT_FUNC(", i-1);dprintf)
