/************************************************************************************
** File: - Z:\code\c\LLprintf\print2.1\LLprintf.h
**  
** Copyright (C), Long.Luo, All Rights Reserved!
** 
** Description: 
**      LLprintf.h ---
** 
** Version: 2.0
** Date created: 23:55:58,24/01/2013
** Author: Long.Luo
** 
** --------------------------- Revision History: --------------------------------
** 	<author>	<data>			<desc>
** 
************************************************************************************/


#ifndef __LLPRINTF_H__
#define __LLPRINTF_H__

//
typedef	char *va_list;


/* string */
#define	STR_DEFAULT_LEN	1024

// 
int Lprintf(const char *fmt, ...);


#endif /* __LLPRINTF_H__ */

