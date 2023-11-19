;------------------------------------------------------------------------------------------------------
; Module4: A Simple SoC  Application
; Toggle LEDs at a given frequency. 
;------------------------------------------------------------------------------------------------------



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
        				DCD		0
        				DCD		0
              
                AREA |.text|, CODE, READONLY
;Reset Handler
Reset_Handler   PROC
                GLOBAL Reset_Handler
                ENTRY

AGAIN		   	LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]
				
				LDR		R2, =0x2				;Delay
Loop			SUBS	R2,R2,#1
				BNE Loop


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]
                
               
				LDR		R2, =0x2				;Delay
Loop1			SUBS	R2,R2,#1
				BNE Loop1

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x11
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x31
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x51
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x9F
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]

 
                LDR		R2, =0x2				;Delay
Loop3			SUBS	R2,R2,#1
				BNE Loop3

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x01
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x01
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x01
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x01
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]

                LDR		R2, =0x2				;Delay
Loop4			SUBS	R2,R2,#1
				BNE Loop4


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x89
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x89
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x89
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x89
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]

                LDR		R2, =0x2				;Delay
Loop5			SUBS	R2,R2,#1
				BNE Loop5

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x24
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x24
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]

                LDR		R2, =0x4				;Delay
Loop6			SUBS	R2,R2,#1
				BNE Loop6

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x10
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xF0
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x10
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]


                LDR		R2, =0x2				;Delay
Loop7			SUBS	R2,R2,#1
				BNE Loop7

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]


                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]

                LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x81
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0xFF
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000				;Write to LED with value 0x55
				LDR		R0, =0x00
				STR		R0, [R1]


                LDR		R2, =0x10				;Delay
Loop8			SUBS	R2,R2,#1
				BNE Loop8





				B AGAIN
				ENDP


				ALIGN 		4						; Align to a word boundary

		END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
   