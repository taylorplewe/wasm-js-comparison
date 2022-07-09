#include <emscripten/emscripten.h>

EMSCRIPTEN_KEEPALIVE int ben(int num1, int num2, _Bool add) {
	for (int i = 0; i < 99999999; i++) {
		if (add)
			num1 += num2;
		else
			num1 -= num2;
	}
	return num1;
}