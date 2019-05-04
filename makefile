./bin/HelloWorld.out: ./src/HelloWorld.o ./src/main.o
	g++ -o ./bin/HelloWorld.out ./src/HelloWorld.o ./src/main.o

./src/HelloWorld.o:
	g++ -c -w ./src/HelloWorld.hpp ./src/main.hpp ./src/HelloWorld.cpp
	mv HelloWorld.o ./src/

./src/main.o:
	g++ -c -w ./src/HelloWorld.hpp ./src/main.hpp ./src/main.cpp
	mv main.o ./src/

clean:
	rm -f ./bin/HelloWorld.out ./src/*.o ./src/*.gch

execute: ./bin/HelloWorld.out
	./bin/HelloWorld.out
