CoDeSys+&                      @        @   2.3.9.47    @/    @                             Yi@X +    @                           ПM@X        с   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         мe@X     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             мe@X     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             мe@X     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             мe@X     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         мe@X     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             мe@X     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     мe@X     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         мe@X     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         мe@X     џџџџ           LEN               STR               §џ                 LEN                                     мe@X     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         мe@X     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             мe@X     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         мe@X     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         мe@X     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       мe@X     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       мe@X     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       мe@X     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             мe@X     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             мe@X     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             мe@X     џџџџ    R    @                                                                                          MAIN           pid                           PID_Controller                    pid_par        	               PID_parameters                    ref           0                SYSTEM STUFF   system                            PT1T2                    mode           STATE_SM_INIT       System_Mode      	              sys_par                 PT1T2_parameters      
                               мe@X  @    џџџџ           PID_CONTROLLER     	      e_k           0    "               e_k_1             "           P-Part   u_p_k           0    "           I-Part   u_i_k           0    "               u_i_k_1             "           D-Part   u_d_k           0    "               u_d_k_1             "               a             "               b             "                  r_k            "               y_k            "               param        	               PID_parameters   "                  u_k            "                        мe@X  @    џџџџ           PT1T2     
      x_k_1             #               x_k_2             #               y_k_1             #               y_k_2             #           Coefficients   a1             #               a2             #               b0             #               b1             #               c1             #               c2             #                  x_k            #               param                 PT1T2_parameters   #               mode               System_Mode   #                  y_k            #                        мe@X  @    џџџџ            
 Ћ   #   "          ( а      K   о     K   ь     K   њ     K                             +     КЛlocalhost ?   ? PpE   |pEM  ? Ф?         ?     pж ЉЂw       ё@       ё@ @~E      ё@        ё@ А}E    џџџџ   ш`=d       F  dз dз Еў џџџџ    hУ3Иж  }#     ё@   Ќж ё@          ё@       и Ф'№ и dз Ф'№ аKdџџџџpз }вя     ,   ,                                                        K         @   мe@Xё  /*BECKCONFI3*/
        !j @   @           3               
   Standard            	мe@X     щ  й            VAR_GLOBAL
END_VAR
                                                                                  "     ЩйоЩйЩh              Standard
         MAINџџџџ           џџџџ мe@X                 $ћџџџ  С[АC                                  Standard ПM@X	ПM@X      ИXр                         	мe@X      [йC й           VAR_CONFIG
END_VAR
                                                                                   '              , Л  ь;           Global_Variables мe@X	мe@X                     H   VAR_GLOBAL
t_cycle : REAL;
t_global: REAL;
T_sample: REAL;
END_VAR
                                                                                               '           	                        Variable_Configuration мe@X	мe@X	                        VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   !   , } W Ў           PID_parameters мe@X	мe@X      №wwwwwp        ф   TYPE PID_parameters :
STRUCT
(*Essential Parameters*)
Kp			:REAL;
Ti			:REAL;
Td			:REAL;
N			:REAL;
sat_high	:REAL;
sat_low		:REAL;

(*Features*)
has_arw	:BOOL;
has_sat	:BOOL;
has_bra	:BOOL;

END_STRUCT
END_TYPE             $   , E Gљ           PT1T2_parameters мe@X	мe@X                      Z   TYPE PT1T2_parameters :
STRUCT
K	: REAL;
T_1	: REAL;
T_2	: REAL;
END_STRUCT
END_TYPE             %   , Љџ к=           System_Mode мe@X	мe@X      0ќ§јћаў        N   TYPE System_Mode :
(
	STATE_SM_INIT := 0,
	STATE_SM_RUN  := 1
);
END_TYPE                  ,   ШR           MAIN Ri@X	мe@X                      д   PROGRAM MAIN
VAR
(*PID STUFF*)
pid		: PID_Controller;
pid_par	: PID_parameters;
ref		: REAL:= 0;
(*SYSTEM STUFF*)
system	: PT1T2;
mode	: System_Mode := STATE_SM_INIT;
sys_par	: PT1T2_parameters;
END_VARt  t_cycle := 0.01;
T_sample := t_cycle;



CASE mode OF
	STATE_SM_INIT :
(*
*)
(*System Parameters*)
sys_par.K 	:= 10;
sys_par.T_1	:= 0.1;
sys_par.T_2	:= 0.01;

(*Initialize System*)
system();
system.mode := mode;

(*Essential PID Parameters*)
pid_par.Kp			:=  1/sys_par.K;
pid_par.Ti			:=  sys_par.T_1;
pid_par.Td			:=  sys_par.T_2;
pid_par.N			:=  100;
pid_par.sat_high	:=  100;
pid_par.sat_low		:= -100;
(*PID Features*)
pid_par.has_arw	:= FALSE;
pid_par.has_sat	:= FALSE;
pid_par.has_bra	:=  TRUE;

(*Initialize Controller*)
pid();
pid.param := pid_par;
(*Actualize Mode*)
mode := STATE_SM_RUN;
(*
*)
	STATE_SM_RUN  :
(*
*)
system.mode := mode;
pid.r_k := ref;
system.x_k := pid.u_k;
pid.y_k := system.y_k;
pid();
system();
(*
*)
ELSE
	mode := STATE_SM_INIT;
END_CASE;


(*Increment global Time*)
t_global := t_global + t_cycle;               "   , S  ТD           PID_Controller мe@X	мe@X      ib*.b@cr        _  FUNCTION_BLOCK PID_Controller
VAR_INPUT
	r_k		: REAL;
	y_k		: REAL;
	param	: PID_parameters;
END_VAR
VAR_OUTPUT
	u_k		: REAL;
END_VAR
VAR
	e_k		: REAL:= 0;
	e_k_1	: REAL;
	(*P-Part*)
	u_p_k	: REAL:= 0;
	(*I-Part*)
	u_i_k	: REAL:= 0;
	u_i_k_1	: REAL;
	(*D-Part*)
	u_d_k	: REAL:= 0;
	u_d_k_1	: REAL;
	a		: REAL;
	b		: REAL;
END_VAR  (*Calculate Error*)
e_k := r_k - y_k;
e_k := e_k * param.Kp;

a 	:= param.Td / (param.Td + param.N * t_cycle);
b	:= (param.Kp * param.Td * param.N)/(param.Td + param.N * t_cycle);

(*Proportional Term*)
u_p_k := e_k;

(*Integrator using Trapeze Approximation*)
u_i_k := u_i_k_1 + (e_k + e_k_1)*t_cycle/(2*param.Ti);

(*Derivate Term*)
IF (param.has_bra = TRUE) THEN
u_d_k := param.Kp * param.Td * (-y_k - e_k_1) / t_cycle;
ELSE
u_d_k := -(a*u_d_k_1 + b*(e_k - e_k_1));
END_IF

(*Calculate Output*)
PID_Controller.u_k := u_p_k + u_i_k + u_d_k;

(*Actualize later used Variables*)
e_k_1 	:= e_k;
u_i_k_1 := u_i_k;
u_d_k_1	:= u_d_k;               #   , Z F           PT1T2 мe@X	мe@X                      3  FUNCTION_BLOCK PT1T2
VAR_INPUT
x_k		: REAL;
param	: PT1T2_parameters;
mode	: System_Mode;
END_VAR
VAR_OUTPUT
y_k		: REAL;
END_VAR
VAR
x_k_1	: REAL;
x_k_2	: REAL;
y_k_1	: REAL;
y_k_2	: REAL;
(*Coefficients*)
a1		: REAL;
a2		: REAL;
b0		: REAL;
b1		: REAL;
c1		: REAL;
c2		: REAL;
END_VARП  CASE mode OF
	STATE_SM_INIT :
		(*Calculation of Coefficients*)
		a1 := EXP(-T_sample/param.T_1);
		a2 := EXP(-T_sample/param.T_2);
		b0 := (param.T_1*(1-a1)-param.T_2*(1-a2))*param.K/(param.T_1 - param.T_2);
		b1 := (param.T_2*a1*(1-a2)-param.T_1*a2*(1-a1))*param.K/(param.T_1 - param.T_2);
		c1 := -(a1+a2);
		c2 := a1*a2;

	STATE_SM_RUN  :
		y_k := b0*x_k_1 + b1*x_k_2 + c1*y_k_1 + c2*y_k_2;
ELSE
	mode := STATE_SM_INIT;
END_CASE;                 §џџџ  й ^_ЩУ         "   STANDARD.LIB 5.6.98 11:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                          ] nљURW           2                џџџџџџџџџџџџџџџџ  
             њџџџ  SL05S_\A        јџџџ                                POUs                MAIN                      PID_Controller  "                   PT1T2  #   џџџџ           
   Data types                PID_parameters  !                   PT1T2_parameters  $                   System_Mode  %   џџџџ             Visualizations  џџџџ              Global Variables                 Global_Variables                     Variable_Configuration  	   џџџџ                                                             ПM@Xџџџџ              	   localhost            P      	   localhost            P      	   localhost            P          XЊЏ