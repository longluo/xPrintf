/************************************************************************************
** File: - Z:\code\c\LLprintf\print2.1\app.c
**  
** Copyright (C), Long.Luo, All Rights Reserved!
** 
** Description: 
**      app.c --- The Application Level.
** 
** Version: 2.1
** Date created: 23:53:41,24/01/2013
** Author: Long.Luo
** 
** --------------------------- Revision History: --------------------------------
** 	<author>	<data>			<desc>
** 
************************************************************************************/

#include "LLprintf.h"

int main(void)
{
	char *welcome = "     A Tiny Demo show the LLprintf   ";
	char *program_name = "LLprintf";
	char *program_author = "Long.Luo";
	char *date = "Jan. 24th, 2013";
	
	float program_version = 2.1;
	
	Lprintf("%s\n\n", welcome);
	Lprintf("\t\t%s, version %f \n\n", program_name, program_version);
	Lprintf("\tCreated by %s, %s.\n\n", program_author, date);
	
	return 0;
}
