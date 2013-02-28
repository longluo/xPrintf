/************************************************************************************
** File: - Z:\code\c\LLprintf\print2.1\string.h
**  
** Copyright (C), Long.Luo, All Rights Reserved!
** 
** Description: 
**      string.h
** 
** Version: 2.0
** Date created: 23:57:37,24/01/2013
** Author: Long.Luo
** 
** --------------------------- Revision History: --------------------------------
** 	<author>	<data>			<desc>
** 
************************************************************************************/


void *memcpy(void* p_dst, void* p_src, int size);
void memset(void* p_dst, char ch, int size);
int	strlen(char* p_str);

/**
 * `phys_copy' and `phys_set' are used only in the kernel, where segments
 * are all flat (based on 0). In the meanwhile, currently linear address
 * space is mapped to the identical physical address space. Therefore,
 * a `physical copy' will be as same as a common copy, so does `phys_set'.
 */
#define	phys_copy	memcpy
#define	phys_set	memset

