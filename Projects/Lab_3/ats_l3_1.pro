CoDeSys+%                      @        @   2.3.9.47    @/    @                             [uX +    @      r_erd_              /"X           @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         EuX     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             EuX     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             EuX     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             EuX     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         EuX     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             EuX     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     EuX     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         EuX     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         EuX     џџџџ           LEN               STR               §џ                 LEN                                     EuX     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         EuX     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             EuX     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         EuX     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         EuX     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       EuX     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       EuX     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       EuX     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             EuX     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             EuX     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             EuX     џџџџ    R    @                                                                                          DOUBLEEDGEDETECTOR           c_state           STATE_IDLE       T_STATE                  prev_sig                            edgeRise                            edgeFall                            TOF                               sig_in                       Timer Count   t                    	   Idle Time   Ti                              fall                           falls                           rise                           rises                       Timer Commands   timer_ON                                    EuX  @   џџџџ           MAIN_A1           currentSafeState            	   SafeState                	   codeArray   	                     FALSE, FALSE, FALSE, FALSE                                                   currentIndex                           correctCounter                            t_abs           0                    lightCounter              	          Objects	   EdgDect_Y                           DoubleEdgeDetector                	   EdgDect_B                           DoubleEdgeDetector               EdgeDetector used Variables   t_Y           0             #   Measure Time between two same Edges   t_B           0             #   Measure Time between two same Edges   lightDuration                      Seconds   t_blind    ЭЬL>   0.2               Seconds                    EuX  @   џџџџ            
 Ћ       	   !         (       K        K   )     K   7     K   L                 Y         +     КЛlocalhost ?   ?  	   p 	M  ? Ф?         ?     pж ЉHw       ё@       ё@ xе	      ё@        ё@ Hе	    џџџџ/  dd       F  dз dз Еў џџџџ     /ћИж  }#     ё@   Ќж ё@          ё@       и Ф'№ и dз Ф'№ аKdџџџџpз }вя     ,   ,                                                        K         @   EuX.  /*BECKCONFI3*/
        !j @   @           3               
   Standard            	EuX                       VAR_GLOBAL
END_VAR
                                                                                  "         ,             Standard
         MAIN_A1џџџџ           џџџџ EuX                 $ћџџџ  Ффh @й               up64</ro           Standard /"X	/"X      otNa>		                         	EuX     NTF O AL           VAR_CONFIG
END_VAR
                                                                                   '              , m } -           Global_Variables EuX	EuX     H3p9            e   VAR_GLOBAL
	btnY	AT%I*	:BOOL;
	btnB	AT%I*	:BOOL;
	lmpG	AT%Q*	:BOOL;
	lmpR	AT%Q*	:BOOL;
END_VAR
                                                                                               '           $                        TwinCAT_Configuration EuX	EuX$     8Ш         1  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.btnY AT %IX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 2 (EL1004)^Channel 1^Input} *)
	.btnB AT %IX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 2 (EL1004)^Channel 2^Input} *)
	.lmpG AT %QX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 3 (EL2004)^Channel 2^Output} *)
	.lmpR AT %QX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 1 (EtherCAT)^Term 1 (EK1200)^Term 3 (EL2004)^Channel 1^Output} *)
END_VAR                                                                                               '           	   , R 4 ф           Variable_Configuration EuX	EuX	     X8p9               VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   !   , + } \-        	   SafeState EuX	EuX      wwwџ№ww        z   TYPE SafeState :
(
	sSt_init,
	sSt_changeCode,
	sSt_close,
	sSt_wrongCode,
	sSt_checkDigit,
	sSt_open
);
END_TYPE                , Љ я к           T_STATE EuX	EuX      )Ti	:EA        }   TYPE T_STATE :
(
	STATE_IDLE := 0,
	STATE_RISE1:= 1,
	STATE_RISE2:= 2,
	STATE_FALL1:= 3,
	STATE_FALL2:= 4
);
END_TYPE                 ,  9 Pщ           DoubleEdgeDetector [uX	EuX      @P$А60#        Т  FUNCTION_BLOCK DoubleEdgeDetector
VAR_INPUT
	(*Input Signal*)
	sig_in 		: BOOL ;
	(*Timer Count*)
	t			: REAL ;
	(*Idle Time*)
	Ti			: REAL  ;
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
	(*Reset Edge*)
	edgeFall := FALSE;
	edgeRise := FALSE;
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
END_CASE;                   ,  ; Ю(           MAIN_A1 EuX	EuX      њ            i  PROGRAM MAIN_A1
VAR
	(*Program used Variables*)
	currentSafeState 	: SafeState;
	codeArray			: ARRAY[1..4] OF BOOL:= FALSE, FALSE, FALSE, FALSE;
	currentIndex		: INT := 1;
	correctCounter		: INT := 0;
	t_abs				: REAL:= 0;
	lightCounter		: INT := 0;
	(*Objects*)
	EdgDect_Y			: DoubleEdgeDetector;
	EdgDect_B			: DoubleEdgeDetector;
	(*EdgeDetector used Variables*)
	t_Y					: REAL := 0; (*Measure Time between two same Edges*)
	t_B					: REAL := 0; (*Measure Time between two same Edges*)
END_VAR
VAR CONSTANT
	lightDuration		: INT := 5; 	(*Seconds*)
	t_blind				: REAL:= 0.2; 	(*Seconds*)
END_VAR   (*Initialize EdgeDetectors*)
EdgDect_Y();
EdgDect_B();

(*Scan Button Y*)
EdgDect_Y.sig_in := btnY;
EdgDect_Y.Ti	 := t_blind;
EdgDect_Y.t		 := t_Y;
(*Scan Button B*)
EdgDect_B.sig_in := btnB;
EdgDect_B.Ti	 := t_blind;
EdgDect_B.t		 := t_B;


(*Final State Machine (FSM)*)
CASE currentSafeState OF


	sSt_init:
		(*Fill Array with secret Code*)
		codeArray[1]:= TRUE;
		codeArray[2]:= FALSE;
		codeArray[3]:= FALSE;
		codeArray[4]:= TRUE;
		(*Branch to State "Close"*)
		currentSafeState := sSt_close;


	sSt_close:
		(*Fuck Everything*)
		currentIndex	:= 1;
		correctCounter	:= 0;
		lmpG			:= FALSE;
		lmpR			:= FALSE;
		lightCounter	:= 100*lightDuration;
		(*Branch to State "Check Digit"*)
		currentSafeState := sSt_checkDigit;

	sSt_changeCode:

		lmpG	:= TRUE;
		lmpR	:= TRUE;

		IF EdgDect_Y.rise = TRUE THEN
			codeArray[currentIndex]:= FALSE;
			currentIndex := currentIndex + 1;
		ELSIF EdgDect_B.rise = TRUE THEN
			codeArray[currentIndex]:= TRUE;
			currentIndex := currentIndex + 1;
		END_IF

		IF currentIndex > 4 THEN
			currentSafeState := sSt_close;
		END_IF
		


	sSt_wrongCode:
		lmpG	:= FALSE;
		lmpR	:= TRUE;
		
		(*Decrement Light Duration Counter*)	
		lightCounter := lightCounter - 1;

		IF lightCounter <= 0 THEN
			currentSafeState := sSt_close;
		END_IF

	sSt_checkDigit:
		(*Just if a Button is pressed...*)
		IF EdgDect_Y.rise = TRUE THEN
			IF codeArray[currentIndex] = FALSE THEN
				correctCounter := correctCounter + 1;
			ELSE
				correctCounter := 0;
			END_IF
			(*Increment for checking next Entry*)
			currentIndex := currentIndex +1;
		ELSIF EdgDect_B.rise = TRUE THEN
			IF codeArray[currentIndex] = TRUE THEN
				correctCounter := correctCounter + 1;
			ELSE
				correctCounter := 0;
			END_IF
			(*Increment for checking next Entry*)
			currentIndex := currentIndex +1;
		END_IF
		
		IF correctCounter = 4 THEN
			(*Branch to State "Open"*)
			currentSafeState := sSt_open;
		ELSIF (currentIndex = 5) AND (correctCounter <> 4) THEN
			(*Branch to State "Wrong Code"*)
			currentSafeState := sSt_wrongCode;
		ELSE
			(*Remain*)
			currentSafeState := sSt_checkDigit;
		END_IF

		IF EdgDect_B.rises = TRUE THEN
			currentSafeState := sSt_close;
		END_IF

	sSt_open:
		lmpG	:= TRUE;
		lmpR	:= FALSE;
			
		(*Branch to change Code if wanted*)
		IF (EdgDect_Y.rise = TRUE) AND (EdgDect_B.rise = TRUE) THEN
			currentIndex := 1;
			currentSafeState := sSt_changeCode;
		END_IF

		(*Decrement Light Duration Counter*)	
		lightCounter := lightCounter - 1;

		IF lightCounter <= 0 THEN
			currentSafeState := sSt_close;
		END_IF

	ELSE
		;
END_CASE;

(*Timer Stuff*)

(*Increment Time t for Button Y*)
IF EdgDect_Y.timer_ON = TRUE THEN
	(*Timer starts counting*)
	t_Y := t_Y + 0.01;
ELSE
	(*Time is up*)
	t_Y := 0;
END_IF

(*Increment Time t for Button B*)
IF EdgDect_B.timer_ON = TRUE THEN
	(*Timer starts counting*)
	t_B := t_B + 0.01;
ELSE
	(*Time is up*)
	t_B := 0;
END_IF

(*Increment Absolute Time*)
t_abs := t_abs + 0.01;                 §џџџ    р           "   STANDARD.LIB 5.6.98 11:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                          џџ                 2                џџџџџџџџџџџџџџџџ  
             њџџџ  Ш            јџџџ  enh ncon                      POUs                DoubleEdgeDetector                     MAIN_A1      џџџџ           
   Data types             	   SafeState  !                   T_STATE     џџџџ             Visualizations  џџџџ              Global Variables                Global_Variables                     TwinCAT_Configuration  $                   Variable_Configuration  	   џџџџ                                                              /"X                         	   localhost            P      	   localhost            P      	   localhost            P          љ4А