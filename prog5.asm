	AREA PROG5,CODE,READONLY
START
	LDR R0,MEM
    LDR R4,RESULT
    LDRH R1,[R0]
	ADD R0,R0,#2
	LDRH R5,[R0]
	MOV R2,R1
LOOP:
	ADD R0, R0, #2          
    LDRH R3, [R0]              
    CMP R5, R3      
	SUBS R2, R2, #1           
    ADD R0, R0, #2
    LDRH R3, [R0]             
    CMP R5, R3                
    SUBS R2, R2, #1           
    ADD R0, R0, #2             
    LDRH R3, [R0]              
    CMP R5, R3               
    SUBS R2, R2, #1          
    ADD R0, R0, #2          
    LDRH R3, [R0]              
    CMP R5, R3                
    SUBS R2, R2, #1           
	 ADD R0, R0, #2          
    LDRH R3, [R0]              
    CMP R5, R3               
    SUBS R2, R2, #1       
    STRH R4, [R5]            
B LOOP	
MEM DCD 0x40000000        
RESULT DCD 0x4000000C   
	END

	
	
	
	
	
	
         
    