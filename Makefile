# Makefile for lab1
CC=gcc
CC_CR=arm-linux-gnueabi-gcc
CLEAN=rm
CLEAN_FLAGS=-f
CLEAN_COMMAND=$(CLEAN) $(CLEAN_FLAGS)
PROGRAM_NAME=program_lab1
PROGRAM_NAME_CROSS_COMPILE=program_cr_lab1

$(PROGRAM_NAME): myclock.o
	$(CC) -o $(PROGRAM_NAME) myclock.o

myclock.o: myclock.c
	$(CC) -c myclock.c	

CROSS_COMPILE: myclock.c
	$(CC_CR) -march=armv7-a -mtune=cortex-a8 -mfpu=neon -o $(PROGRAM_NAME_CROSS_COMPILE) myclock.c

clean: 
	$(CLEAN_COMMAND) *.o
	$(CLEAN_COMMAND) $(PROGRAM_NAME)
	$(CLEAN_COMMAND) $(PROGRAM_NAME_CROSS_COMPILE)
	
