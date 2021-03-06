; ========================================================== ;
;                                                            ;
; Utilities for IAS subject labs                             ;
;                                                            ;
; Version: 	v0.1                                             ;
; Date:		2014-11-23                                       ;
; Author: 	Martin Zamba (izamba@fit.vutbr.cz)               ;
;                                                            ;
; ========================================================== ; 

%ifndef IAS_UTILS	; to avoid multiple inclusion
%define IAS_UTILS	;

; ========================================================== ; 
;                           Macros                           ;
; ========================================================== ; 

; macro for printing new line character(s)
%macro _nl 0
	call WriteNewLine
%endmacro

; macro will print one character
%macro _putchar 1
	push EAX
	mov AL, %1
	call WriteChar
	pop EAX
%endmacro

; macro will print string starting at parameter
%macro _write 1
	push ESI
	mov ESI, %1
	call WriteString
	pop ESI
%endmacro

; macro will print string starting at parameter + new line
%macro _writeln 1
	write %1
	nl
%endmacro

; macro will print 32bit integer at parameter
%macro _uwrite 1
	push EAX
	mov EAX, %1
	call WriteInt32
	pop EAX
%endmacro

; macro will print 32bit integer at parameter + new line
%macro _uwriteln 1
	iwrite %1
	ln
%endmacro

; ========================================================== ; 
;                          Variables                         ;
; ========================================================== ; 

[section .data use32 class=DATA] 	


; ========================================================== ; 
;                         Functions                          ;
; ========================================================== ; 

[section .checker use32 class=CODE] 	


%endif				; to avoid multiple inclusion
	