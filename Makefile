.PHONY: default clean

default: 
	g++ -fpermissive -Wall -o test *cpp
	sudo ./test

clean:
	rm -f *.o *.a test

%.o: %.cpp
	g++ -Wall -c -o $@ $^

libpine64.a: gpio.o i2c.o spi.o
	ar rcs $@ $^
