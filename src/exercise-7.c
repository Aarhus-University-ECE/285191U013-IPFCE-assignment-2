#include <stdio.h>

int main() {
	int x = 0;
	int y = 0;
	int a = 5;
	int b = 7;
	int h = b - a / 2;

	while (x <= a) {
		printf("(%d,%d) ", x, y);
		if (h < 0) {
			h += b;
		} else {
			h += b - a;
			y++;
		}
		x++;
	}

	printf("\n");

	return 0;
}
