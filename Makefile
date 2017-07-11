all: vec unittest

vec: vec.cpp unittest.cpp
	g++ vec.cpp unittest.cpp -Wall -o vec -D ORIGINAL
unittest: vec.cpp unittest.cpp
	g++ vec.cpp unittest.cpp -Wall -o unittest -D UNIT_TEST
clean:
	rm -f vec unittest
