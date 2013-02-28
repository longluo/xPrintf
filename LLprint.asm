;************************************************************************************
;   File: - Z:\code\c\LLprintf\print2.1\LLprint.asm
;   
;   Copyright (C), Long.Luo, All Rights Reserved!
; 
;   Description: 
;       LLprint.asm
;  
;   Version: 1.0
;   Date created: 21:45:04,10/01/2013
;   Author: Long.Luo
; 
; --------------------------- Revision History: --------------------------------
; 	<author>	<data>			<desc>
; 
;************************************************************************************

extern main

[section .data]	; Data start here

[section .text]	; Code start here

global _start	; import ENTRY: _start, for the LD.
global LLprint	; import the function for app.c.

_start:
		call main			;  main
		add	esp, 8			; 

		mov ebx, 0      	; 参数一：退出代码
		mov eax, 1       	; 系统调用号(sys_exit) 
		int 0x80         	; 调用内核功能	

; ====================================================================================
;                          void LLprint(char* msg, int len);
; ====================================================================================
LLprint:
		mov edx, [esp + 8]  ; 参数三：字符串长度
		mov ecx, [esp + 4]  ; 参数二：要显示的字符串
		mov ebx, 1       	; 参数一：文件描述符(stdout) 
		mov eax, 4       	; 系统调用号(sys_write) 
		int 0x80         	; 调用内核功能
		ret              	; 退出程序
		
