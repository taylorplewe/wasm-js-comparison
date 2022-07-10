#include <emscripten/emscripten.h>

EMSCRIPTEN_KEEPALIVE double func3(double num1) {
    double num2 = num1;

    for (int i = 0; i < 99999999; i++) {
        if (i % 7 == 0)
			num1 += i / 3;
		else if ((int)(i + num2) % 2 == 0)
			num1 /= 2;
		else if (i % 10 == 0)
			num2 *= 2;
		else
			num1++;
    }

	return num1;
}