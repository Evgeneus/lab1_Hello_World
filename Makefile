# Makefile for lab1
CC=gcc
CLEAN=rm
CLEAN_FLAGS=-f
CLEAN_COMMAND=$(CLEAN) $(CLEAN_FLAGS)
PROGRAM_NAME=lab1

$(PROGRAM_NAME): myclock.o
	$(CC) -o $(PROGRAM_NAME) myclock.o

myclock.o: myclock.c
	$(CC) -c myclock.c	

clean: 
	$(CLEAN_COMMAND) *.o
	$(CLEAN_COMMAND) $(PROGRAM_NAME)
