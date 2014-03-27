all: hello.c.bin HelloWorld.class

%.c.bin: %.c
	gcc -o $@ $<

%.class: %.java
	javac $<

clean:
	rm -f *.bin *.class

# in alphabetic order by language
run:
	./hello.sh          # Bash
	./hello.c.bin       # C
	java HelloWorld     # Java
	./hello.py          # Python
