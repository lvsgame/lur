.PHONY: test clean

test: test.c lur.c lur.h
	gcc -g -Wall -Werror -o $@ $^ -llua -ldl -lm

clean:
	rm -f test *.o
