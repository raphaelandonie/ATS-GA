CoDeSys+#                      @        @   2.3.9.47    @/    @                             ЧX +    @      r_erd_              йўX        ї   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         ды66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             ды66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             ды66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             ды66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         ды66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     ды66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         ды66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         ды66     џџџџ           LEN               STR               §џ                 LEN                                     ды66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         ды66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         ды66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         ды66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       ды66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       ды66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       ды66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             ды66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             ды66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             ды66     џџџџ    R    @                                                                                          DOUBLEEDGEDETECTOR           c_state           STATE_IDLE       T_STATE                   prev_sig                            edgeRise                            edgeFall                            TOF                               sig_in                       Timer Count   t                    	   Idle Time   Ti                              fall                           falls                           rise                           rises                       Timer Commands   timer_ON                                    eX  @    џџџџ           EDGEDETECTOR           prev             !                  sig_in            !                  fall            !               rise            ! 	                       eX  @    џџџџ           MAIN           v_edgeDetect                  EdgeDetector                    v_DedgeDetect                           DoubleEdgeDetector                    isRising                          	   isFalling                             t           0                Seconds   tot      ?   1                                     eX  @    џџџџ            
 Ћ    "   !         ( ц      K   є     K        K        K   %                 2         +     КЛlocalhost (  (а   ЬаM  (Ф(        (    pж ЉHw       ё@       ё@ K      ё@        ё@  K    џџџџ  №Јd       F  dз dз Еў џџџџ    АЈ­Иж  }#     ё@   Ќж ё@          ё@       и Ф'№ и dз Ф'№ аKdџџџџpз }вя     ,   ,                                                        K         @   eX  /*BECKCONFI3*/
        !j @   @           3               
   Standard            	ЧX                       VAR_GLOBAL
END_VAR
                                                                                  "   ,     ,             Standard
         MAINџџџџ           џџџџ ЧX                 $ћџџџ  Ффh @й                                  Standard йўX	йўX                                       	ЧX     NTF O AL           VAR_CONFIG
END_VAR
                                                                                   '              , г q %           Global_Variables ЧX	ЧX     џџ           Т   VAR_GLOBAL
	(*Input Variables*)
	btnY	AT%I*	:BOOL; (*Button 1*)
	btnB	AT%I*	:BOOL; (*Button 2*)
	(*Output Variables*)
	lmpR	AT%Q*	:BOOL; (*Lamp 1*)
	lmpG	AT%Q*	:BOOL; (*Lamp 2*)
END_VAR
                                                                                               '                Z   j              TwinCAT_Configuration eX	ЧX     џџ           1  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.btnY AT %IX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 2 (EL1004)^Channel 1^Input} *)
	.btnB AT %IX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 2 (EL1004)^Channel 2^Input} *)
	.lmpR AT %QX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 3 (EL2004)^Channel 1^Output} *)
	.lmpG AT %QX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 3 (EL2004)^Channel 2^Output} *)
END_VAR                                                                                               '           	   , Э  ў6           Variable_Configuration eX	eX	     џџ              VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   "   , О PВ           T_STATE eX	eX      SE
	al	:        }   TYPE T_STATE :
(
	STATE_IDLE := 0,
	STATE_RISE1:= 1,
	STATE_RISE2:= 2,
	STATE_FALL1:= 3,
	STATE_FALL2:= 4
);
END_TYPE                 ,  5 Б           DoubleEdgeDetector RzX	eX                      С  FUNCTION_BLOCK DoubleEdgeDetector
VAR_INPUT
	(*Input Signal*)
	sig_in 		: BOOL ;
	(*Timer Count*)
	t			: REAL ;
	(*Idle Time*)
	Ti			: REAL ;
END_VAR
VAR_OUTPUT
	fall		: BOOL ;
	falls		: BOOL ;	
	rise		: BOOL ;
	rises		: BOOL ;
	(*Timer Commands*)
	timer_ON	: BOOL ;
END_VAR
VAR
	c_state		: T_STATE := STATE_IDLE;
	prev_sig	: BOOL := FALSE;
	edgeRise	: BOOL := FALSE;
	edgeFall	: BOOL := FALSE;
	TOF			: BOOL := FALSE;
END_VARЭ  (*Reset Outputs*)
DoubleEdgeDetector.fall		:= FALSE ;
DoubleEdgeDetector.falls	:= FALSE ;	
DoubleEdgeDetector.rise		:= FALSE ;
DoubleEdgeDetector.rises	:= FALSE ;

(*Check Timer Overflow*)
IF (t > Ti) THEN
	TOF := TRUE;
ELSE
	TOF := FALSE;
END_IF

(*Check Edge*)
IF (prev_sig = sig_in) THEN
	(*NIL*)
	edgeRise	:= FALSE;
	edgeFall	:= FALSE;
	;
ELSIF (prev_sig = TRUE) AND (sig_in = FALSE) THEN
	(*Falling Edge*)
	edgeFall := TRUE;
	edgeRise := FALSE;
ELSIF (prev_sig = FALSE) AND (sig_in = TRUE) THEN
	(*Rising Edge*)
	edgeFall := FALSE;
	edgeRise := TRUE;
END_IF

(*Set current Signal = previous Signal*)
prev_sig := sig_in;

(*Final State Machine Implementation*)
CASE c_state OF
	STATE_IDLE:
		(**)
		IF edgeRise = TRUE THEN
			c_state := STATE_RISE1;
		ELSIF edgeFall = TRUE THEN
			c_state := STATE_FALL1;
		ELSE
			c_state := STATE_IDLE;
		END_IF

	STATE_RISE1:
		(*Start Timer*)
		DoubleEdgeDetector.timer_ON := TRUE;
		(**)
		IF TOF = TRUE THEN
			DoubleEdgeDetector.timer_ON := FALSE;
			DoubleEdgeDetector.rise 	:= TRUE;
			c_state := STATE_IDLE;
		ELSIF edgeRise THEN 
			c_state := STATE_RISE2;
		ELSE
			c_state := STATE_RISE1;
		END_IF

	STATE_RISE2:
		(**)
		DoubleEdgeDetector.rises 	:= TRUE;
		c_state := STATE_IDLE;
		
	STATE_FALL1:
		(*Start Timer*)
		DoubleEdgeDetector.timer_ON := TRUE;
		(**)
		IF TOF = TRUE THEN
			DoubleEdgeDetector.timer_ON := FALSE;
			DoubleEdgeDetector.fall 	:= TRUE;
			c_state := STATE_IDLE;
		ELSIF edgeFall THEN 
			c_state := STATE_FALL2;
		ELSE
			c_state := STATE_FALL1;
		END_IF

	STATE_FALL2:
		(**)
		DoubleEdgeDetector.falls 	:= TRUE;
		c_state := STATE_IDLE;

	ELSE
		c_state := STATE_IDLE;
END_CASE;               !   ,   n           EdgeDetector eX	eX                      п   FUNCTION_BLOCK EdgeDetector
VAR_INPUT
	(*Input Signal*)
	sig_in 		: BOOL ;
END_VAR
VAR_OUTPUT
	(*Output Flags*)
	fall		: BOOL ;
	rise		: BOOL ;
END_VAR
VAR
	(*Lifelong Variables*)
	prev	: BOOL := FALSE;
END_VAR-  IF (prev = sig_in) THEN
	(*NIL*)
	;
ELSIF (prev = TRUE) AND (sig_in = FALSE) THEN
	(*Falling Edge*)
	fall := TRUE;
	rise := FALSE;
ELSIF (prev = FALSE) AND (sig_in = TRUE) THEN
	(*Rising Edge*)
	fall := FALSE;
	rise := TRUE;
END_IF

(*Set current State = previous State*)
prev := sig_in;                   ,  6 1D           MAIN eX	eX                      а   PROGRAM MAIN
VAR
	v_edgeDetect	: EdgeDetector;
	v_DedgeDetect	: DoubleEdgeDetector;
	isRising		: BOOL := FALSE;
	isFalling		: BOOL := FALSE;
	t				: REAL := 0;	(*Seconds*)
	tot				: REAL := 1;
END_VAR1  (*Initialize*)
v_DedgeDetect();

(*Scan Button*)
v_DedgeDetect.sig_in 	:= btnY;
v_DedgeDetect.Ti 		:= tot;
v_DedgeDetect.t 		:= t;

(*Read Edge*)
IF v_DedgeDetect.rise = TRUE THEN
	lmpG := FALSE;
	lmpR := TRUE;
ELSIF v_DedgeDetect.rises = TRUE THEN
	lmpG := TRUE;
	lmpR := FALSE;
ELSE
	lmpG := FALSE;
	lmpR := FALSE;
END_IF

(*Show Edges*
lmpR		:= isFalling;
lmpG		:= isRising;
*)

(*Increment Time t*)
IF v_DedgeDetect.timer_ON = TRUE THEN
	(*Timer Starts counting*)
	t := t+0.01;
ELSE
	(*Used after Time is up*)
	t := 0;
END_IF                 §џџџ    р           "   STANDARD.LIB 5.6.98 12:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                          џџ                 2                џџџџџџџџџџџџџџџџ  
             њџџџ  tpQ            јџџџ  Ајрњћ8ј                      POUs                 DoubleEdgeDetector                     EdgeDetector  !                  MAIN      џџџџ          
   Data types                 T_STATE  "   џџџџ             Visualizations  џџџџ              Global Variables                 Global_Variables                     TwinCAT_Configuration                    Variable_Configuration  	   џџџџ                                                              йўX                         	   localhost            P      	   localhost            P      	   localhost            P          <+тѕ