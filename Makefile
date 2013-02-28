#************************************************************************************
# File: - Z:\code\c\LLprintf\print2.1\Makefile
#  
# Copyright (C), Long.Luo, All Rights Reserved!
# 
# Description: 
#      Makefile
# 
# Version: 1.3
# Date created: 21:49:10,10/01/2013
# Author: Long.Luo
# 
# --------------------------- Revision History: --------------------------------
# 	<author>	<data>			<desc>
# 
#************************************************************************************

# Programs, flags, etc.
ASM		= nasm
CC		= gcc
LD		= ld
ASMFLAGS	= -f elf
CFLAGS		= -c -fno-stack-protector -fno-builtin
LDFLAGS		= -s


# This Program
BIN		= AppPrintf
OBJS	= LLprint.o string.o app.o LLprintf.o vsLLprintf.o

# All Phony Targets
.PHONY : everything final image clean realclean disasm all buildimg

# Default starting position
everything : $(BIN)

all : realclean everything

final : all clean

clean :
	rm -f $(OBJS)

realclean :
	rm -f $(OBJS) $(BIN)
	
$(BIN) : $(OBJS)
	$(LD) $(LDFLAGS) -o $(BIN) $(OBJS)
		
LLprint.o : LLprint.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

string.o : string.asm
	$(ASM) $(ASMFLAGS) -o $@ $<	

app.o: app.c
	$(CC) $(CFLAGS) -o $@ $<

LLprintf.o: LLprintf.c
	$(CC) $(CFLAGS) -o $@ $<

vsLprintf.o: vsLprintf.c
	$(CC) $(CFLAGS) -o $@ $<
	