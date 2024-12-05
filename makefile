all: program.exe clean run

program.exe: main.o libliniowa.a
	g++ main.o libliniowa.a -o program.exe

main.o: main.cpp
	g++ -c main.cpp -o main.o

libliniowa.a: linia.o
	ar rcs libliniowa.a linia.o

linia.o: linia.cpp
	g++ -c linia.cpp -o linia.o

run:program.exe
	./program.exe

clean:
	del -f *.o *.a
