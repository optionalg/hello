all: hello.c.bin hello.cpp.bin HelloWorld.class

%.c.bin: %.c
	gcc -o $@ $<

%.cpp.bin: %.cpp
	g++ -o $@ $<

%.class: %.java
	javac $<

clean:
	rm -f *.bin *.class

# in alphabetic order by language
run:
	./hello.sh          # Bash
	./hello.c.bin       # C
	./hello.cpp.bin     # C++
	java HelloWorld     # Java
	./hello.py          # Python
