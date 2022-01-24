
PROG=pi
CFLAGS= -Wall -lpthread -lrt -lm
POINTS= 240000000
PROCS= 16

$(PROG): $(PROG).c
	gcc -o $(PROG) $(PROG).c $(CFLAGS)

run:
	./$(PROG) $(POINTS) 16

runall:
	number=1 ; while [[ $$number -le $(PROCS) ]] ; do \
		./$(PROG) $(POINTS) $$number ; \
		((number = number + 1)) ; \
	done

clean:
	rm $(PROG)

