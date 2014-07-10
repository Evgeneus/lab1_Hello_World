#include <stdio.h>
#include <time.h>

int main(void)
{
	time_t nt = time(NULL);
	printf("%s", ctime(&nt));
	printf("%s\n", "Hello World!");
	return 0;
}
