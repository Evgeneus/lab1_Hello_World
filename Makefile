# Makefile for lab1

lab1: myclock.o
	gcc -o lab1 myclock.o

myclock.o: myclock.c
	gcc -c myclock.c	

clean: 
	rm -f *.o
	rm -f lab1
