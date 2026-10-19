CC = gcc
CFLAGS = -Wall -Wextra -O3

build:
	$(CC) $(CFLAGS) prime_utils.c test_app.c -o validator

test: build
	./validator

lint:
	cppcheck --enable=all --suppress=missingIncludeSystem --error-exitcode=1 prime_utils.c test_app.c

clean:
	rm -f validator validator.exe *.tar.gz
