# Makefile for lab1
CLEAN=rm
CFLAGS=-f
CLEAN_COMMAND=$(CLEAN) $(CFLAGS)
PROGRAM_NAME=program_lab1
#/usr/bin/arm-linux-gnueabi-
CROSS_COMPILE=

$(PROGRAM_NAME): myclock.c
	$(CROSS_COMPILE)gcc -o $(PROGRAM_NAME) myclock.c

clean: 
	$(CLEAN_COMMAND) *.o
	$(CLEAN_COMMAND) $(PROGRAM_NAME)