CoDeSys+)                      @        @   2.3.9.47    @/    @                             ?є-X +    @      r_erd_              GqX        #   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         ды66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             ды66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             ды66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             ды66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         ды66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     ды66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         ды66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         ды66     џџџџ           LEN               STR               §џ                 LEN                                     ды66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         ды66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         ды66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         ды66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       ды66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       ды66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       ды66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             ды66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             ды66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             ды66     џџџџ    R    @                                                                                          DOUBLEEDGEDETECTOR           c_state           STATE_IDLE       T_STATE    !               prev_sig             !               edgeRise             !               edgeFall             !               TOF             !                  sig_in            !           Timer Count   t            !        	   Idle Time   Ti            !                  fall            !               falls            !               rise            !               rises            !           Timer Commands   timer_ON            !                         Д$X  @    џџџџ        
   INTEGRATOR           u_k_1             % 	              e_k_1             % 
              T           0    %               T_leave           0    %                  e_k            %                  u_k            %                         Д$X  @    џџџџ           LOWPASSFILTER           y_k_1             ( 
              T             (               T_leave             (               p             (               q             (                  x_k            (               tau            (                  y_k            (                         Д$X  @    џџџџ           MAIN           var_int                 
   Integrator                    var_lp                      LowpassFilter                Function Input Parameters   mini_sqr       Р   -2                    maxi_sqr       @   2      	              tau    ЭЬЬ=   0.1      
          Function Output Signals
   sigOut_int           0                 
   sigOut_sqr           0                 	   sigOut_lp           0                                      Д$X  @    џџџџ        	   PWMSIGNAL           pi    аI@   3.14159    "               w             " 	       	   Frequency   th             " 
              curr_sin             "           Current Sine Wave      t            "        
   Input Time   dc            "           Input Duty Cicle   per            "           Input Period   	   PWMSignal                                       Д$X  @    џџџџ           SECONDORDERLAG           y_k_1                            y_k_2                            T                            T_leave                        Coefficients   a                            b                            c                               d                           w0                           x_k                              y_k                                     Д$X  @    џџџџ           SINUSFUNCTION           w      ?   1    #        	   Frequency   A      ?   1    #        	   Amplitude   offs           0    #           Offset      t            #        
   Input Time      SinusFunction                                       Д$X  @    џџџџ           SQUARESIGNAL           w      ?   1    $        	   Frequency   offs           0    $ 	          Offset   curr_sin             $ 
          Current Sine Wave      t            $        
   Input Time   mini            $           Minimum Value   maxi            $           Maximum Value      SquareSignal                                       Д$X  @    џџџџ            
 Ћ      %   #   $   "      (   !          	      ( Ї$      K   Е$     K   У$     K   б$     K   ц$                 ѓ$         +     КЛlocalhost -  -8РH   РHЅ  -Ф-        -    pж ЉVw       ё@       ё@ @фH      ё@        ё@ ЈтH    џџџџj   п4d       F  dз dз Еў џџџџ    Њ4Иж  }%     ё@   Ќж ё@          ё@       и Ф'№ и dз Ф'№ аKdџџџџpз }вя     ,   ,                                                        K         @    Д$XШ&  /*BECKCONFI3*/
        !j @   @           3               
   Standard            	!Д$X                       VAR_GLOBAL
END_VAR
                                                                                  "   , )  ZК             Standard
         MAINџџџџ                Д$X                 $ћџџџ  Ффh @й                     !с           Standard GqX	GqX        St                         	 Д$X     NTF O AL           VAR_CONFIG
END_VAR
                                                                                   '              , Є h е           Global_Variables  Д$X	 Д$X                     E   VAR_GLOBAL
	(*Global used Time [sec]*)
	t_global : REAL;
END_VAR
                                                                                               '           	   , Ж PQ           Variable_Configuration  Д$X	 Д$X	     џџ              VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   &      :SisFct           T_STATE  Д$X	 Д$X       Te-rile        }   TYPE T_STATE :
(
	STATE_IDLE := 0,
	STATE_RISE1:= 1,
	STATE_RISE2:= 2,
	STATE_FALL1:= 3,
	STATE_FALL2:= 4
);
END_TYPE              !   , Е f ц           DoubleEdgeDetector  Д$X	 Д$X      Pр C :EA        Т  FUNCTION_BLOCK DoubleEdgeDetector
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
END_VARЯ  (*Reset Outputs*)
DoubleEdgeDetector.fall		:= FALSE ;
DoubleEdgeDetector.falls		:= FALSE ;
DoubleEdgeDetector.rise		:= FALSE ;
DoubleEdgeDetector.rises		:= FALSE ;

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
END_CASE;               %   ,  " ДТ        
   Integrator  Д$X	 Д$X                      И   FUNCTION_BLOCK Integrator
VAR_INPUT
	e_k		: REAL ;
END_VAR
VAR_OUTPUT
	u_k	: REAL ;
END_VAR
VAR
	u_k_1	: REAL;
	e_k_1	: REAL;
	T		: REAL := 0;
	T_leave	: REAL := 0;
END_VAR	  (*Calculate Time Gap*)
IF t_global = 0 THEN
	T := 0.01;
ELSE
	T := t_global - T_leave;
END_IF

(*Trapeze Approximation*)
Integrator.u_k := u_k_1 + (e_k + e_k_1)*T/2;


(*Actualize later used Variables*)
e_k_1 := e_k;
u_k_1 := u_k;
T_leave := t_global;               (   , Р & ёЦ           LowpassFilter  Д$X	 Д$X      AL;ri :        Ъ   FUNCTION_BLOCK LowpassFilter
VAR_INPUT
	x_k		: REAL;
	tau		: REAL;
END_VAR
VAR_OUTPUT
	y_k		: REAL;
END_VAR
VAR
	y_k_1	: REAL;
	T		: REAL;
	T_leave : REAL;
	p	 	: REAL;
	q		: REAL;
END_VAR,  (*Calculate Time Gap*)
IF t_global = 0 THEN
	T := 0.01;
ELSE
	T := t_global - T_leave;
END_IF

(*Calculate Gains*)
q	:= tau/(T+tau);
p	:= T/(T+tau);


(*Calculate Output*) 
LowpassFilter.y_k := p*x_k + q*y_k_1;


(*Actualize Later used Variables*)
y_k_1 := y_k;
T_leave := t_global;                   , { N Ќю           MAIN  Д$X	 Д$X      l 
V:OR        7  PROGRAM MAIN
VAR
	(*System Block*)
	var_int		:Integrator;
	var_lp		: LowpassFilter;	

	(*Function Input Parameters*)
	mini_sqr	:REAL := -2;
	maxi_sqr	:REAL := +2;
	tau			:REAL := 0.1;
	
	(*Function Output Signals*)
	sigOut_int	: REAL := 0;
	sigOut_sqr	: REAL := 0;
	sigOut_lp	: REAL := 0;
END_VARЄ  (*Initialize Function Blocks*)
var_int();
var_lp();

(*Square Wave*)
sigOut_sqr := SquareSignal(t_global, mini_sqr, maxi_sqr);

(*Call Integrator*)
var_int.e_k := sigOut_sqr;
(*Write Integral Value in Variable*)
sigOut_int := var_int.u_k;

(*Call Lowpass Filter*)
var_lp.x_k	:= sigOut_sqr;
(*Write Lowpassed in Variable*)
sigOut_lp	:= var_lp.y_k;

(*Increment global Time*)
t_global := t_global + 0.01;               "   , Э  ў"        	   PWMSignal  Д$X	 Д$X                        FUNCTION PWMSignal : REAL
VAR_INPUT
	t	:	REAL;		(*Input Time*)
	dc	:	REAL;		(*Input Duty Cicle*)
	per	:	REAL;		(*Input Period*)
END_VAR
VAR
	pi		:	REAL := 3.14159;
	w		:	REAL ;	(*Frequency*)
	th		:	REAL ;
	curr_sin:	REAL ;	(*Current Sine Wave*)
END_VAR  (*Generate PWM*)

(*Calculate Frequency using Period*)
w := (2*pi)/(per);
(*Generate Reference Wave*)
curr_sin := 0.5*SIN(w*t)+0.5;
(*Calculate Threshold*)
th := 1-((dc)/(100));
(*Check validity of Input Duty Call*)
IF (dc <= 0) OR (dc > 100) THEN
	PWMSignal := 0;
ELSE
(*Compare Reference Wave to Threshold*)
IF curr_sin > th THEN
	PWMSignal := 1;
ELSE
	PWMSignal := 0;
END_IF
END_IF                  ,     1           SecondOrderLag ?є-X	 Д$X      x   2 Н          FUNCTION_BLOCK SecondOrderLag
VAR_INPUT
	d	: REAL;
	w0	: REAL;
	x_k	: REAL;
END_VAR
VAR_OUTPUT
	y_k	: REAL;
END_VAR
VAR
	y_k_1	: REAL;
	y_k_2	: REAL;
	T		: REAL;
	T_leave : REAL;
	(*Coefficients*)
	a		: REAL;
	b		: REAL;
	c		: REAL;

END_VAR  (*Calculate Time Gap*)
IF t_global = 0 THEN
	T := 0.001;
ELSE
	T := t_global - T_leave;
END_IF

(*Coefficients*)
a := (1/EXPT(T,2))+((1/T)*2*d*w0)+(EXPT(w0,2));
b := (2/EXPT(T,2))+((1/T)*2*w0);
c := 1/EXPT(T,2);

(*Calculate Output*)
SecondOrderLag.y_k := (1/a)*((EXPT(w0,2))*x_k - b*y_k_1 - c*y_k_2);

(*Actualize Later used Variables*)
y_k_1 := y_k;
y_k_2 := y_k_1;
T_leave := t_global;               #   , і  '<           SinusFunction  Д$X	 Д$X                      И   FUNCTION SinusFunction : REAL
VAR_INPUT
	t	:	REAL;		(*Input Time*)
END_VAR
VAR
	w	:	REAL := 1; 	(*Frequency*)
	A	:	REAL := 1;	(*Amplitude*)
	offs:	REAL := 0;	(*Offset*)
END_VAR;   (*Generate Sine-Wave*)
SinusFunction := A*SIN(w*t) + offs;               $   ,  J Нъ           SquareSignal  Д$X	 Д$X                        FUNCTION SquareSignal : REAL
VAR_INPUT
	t	:	REAL;		(*Input Time*)
	mini:	REAL;		(*Minimum Value*)
	maxi:	REAL;		(*Maximum Value*)
END_VAR
VAR
	w		:	REAL := 1; 	(*Frequency*)
	offs	:	REAL := 0;	(*Offset*)
	curr_sin:	REAL ;		(*Current Sine Wave*)
END_VAR   (*Generate Square-Wave*)

curr_sin := SIN(w*t);

IF curr_sin > 0 THEN
	SquareSignal := maxi + offs;
ELSE
	SquareSignal := mini + offs;
END_IF                 §џџџ    р           "   STANDARD.LIB 5.6.98 11:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                        ,     1            2                џџџџџџџџџџџџџџџџ  
             њџџџ                  јџџџ                               POUs                 DoubleEdgeDetector  !                
   Integrator  %                   LowpassFilter  (                   MAIN                   	   PWMSignal  "                  SecondOrderLag                     SinusFunction  #                   SquareSignal  $   џџџџ          
   Data types                 T_STATE  &   џџџџ             Visualizations  џџџџ              Global Variables                 Global_Variables                     Variable_Configuration  	   џџџџ                                                            GqX                         	   localhost            P      	   localhost            P      	   localhost            P           +ѓN