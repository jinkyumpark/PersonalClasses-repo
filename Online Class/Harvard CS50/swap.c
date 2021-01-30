#include <stdio.h>

void swap(int *a, int *b);

int main(void){
	int x = 0;
	int y = 0;
	printf("Enter x and y: ");
	scanf("%d, %d", &x, &y);

	swap(&x, &y);

	printf("x is %d, and y is %d.", x, y);
}

void swap(int *a, int *b){
	int swap = *a;
	*b = *a;
	*a = swap;
}
