; Vector Table Mapped to Address 0 at Reset

						PRESERVE8
                		THUMB

        				AREA	RESET, DATA, READONLY	  			; First 32 WORDS is VECTOR TABLE
        				EXPORT 	__Vectors
					
__Vectors		    	DCD		0x000003FC							; 1K Internal Memory
        				DCD		Reset_Handler
        				DCD		0  			
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD 	0
        				DCD		0
        				DCD		0
        				DCD 	0
        				DCD		0
        				
        				; External Interrupts
						        				
        				DCD		BTN_Handler
        				DCD		TIMER_Handler
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
              
                AREA |.text|, CODE, READONLY
;Reset Handler
Reset_Handler   PROC
                GLOBAL Reset_Handler
                ENTRY
                
				LDR     R1, =0xE000E100         ;Interrupt Set Enable Register
                LDR     R0, =0x00000003           
                STR     R0, [R1]
           
				LDR 	R1, =0x50000000			; Reset LED
				MOVS	R0,#1
			    STR     R0, [R1]
				;Configure the timer
				LDR 	R3, =0x51000000			; Reset shumaguan
				MOVS	R4,#1
                STR     R4, [R3]
				
				
				
				LDR 	R1, =0x52000000	     	;timer load value register
				LDR 	R0, =0x00000001    	    ;=50,000,000 (system tick frequency)//0x02faf080
				STR		R0,	[R1]			
				LDR 	R1, =0x52000008		    ;timer control register
				MOVS	R0, #0x03			    ;prescaler=1, enable timer, reload mode
				STR		R0,	[R1]
	
AGAIN1			B AGAIN1
				ENDP
					
BTN_Handler PROC
              	PUSH {LR}
				POP{PC}
			ENDP
TIMER_Handler  PROC
                 PUSH    {R0,R1,R3,R4,LR}
				;LDR 	R1, =0x5200000c		;clear timer 				
              ;  MOVS	R0, #0x01
				;STR		R0, [R1]
				LDR 	R0, =0x50000000
				LDR		R1,[R0]
				ADDS	R1,R1,#1           ; add 2
				STR		R1,[R0]             ; send to led
				LDR 	R3, =0x51000000
				LDR		R4,[R3]
				ADDS	R4,R4,#1            ; add 2
				STR		R4,[R3]             ; send to led

 			   POP     {R0,R1,R3,R4,PC}
	    ENDP
		END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
   