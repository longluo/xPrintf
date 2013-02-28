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

		mov ebx, 0      	; ����һ���˳�����
		mov eax, 1       	; ϵͳ���ú�(sys_exit) 
		int 0x80         	; �����ں˹���	

; ====================================================================================
;                          void LLprint(char* msg, int len);
; ====================================================================================
LLprint:
		mov edx, [esp + 8]  ; ���������ַ�������
		mov ecx, [esp + 4]  ; ��������Ҫ��ʾ���ַ���
		mov ebx, 1       	; ����һ���ļ�������(stdout) 
		mov eax, 4       	; ϵͳ���ú�(sys_write) 
		int 0x80         	; �����ں˹���
		ret              	; �˳�����
		
