
t
Command: %s
53*	vivadotcl2C
/synth_design -top bt_uart -part xc7a35tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 363.047 ; gain = 107.023
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
bt_uart2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
42default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter BAUD_RATE bound to: 9600 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCK_RATE_RX bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCK_RATE_TX bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
	top_voice2default:default2^
HC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/top_voice.v2default:default2
242default:default8@Z8-638h px� 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter BEEP_ON bound to: 3'b001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter BEEP_OFF bound to: 3'b010 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter WAIT_5S bound to: 3'b011 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter BEEP_DURATION bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter WAIT_DURATION bound to: 500000000 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2^
HC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/top_voice.v2default:default2
942default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_voice2default:default2
12default:default2
12default:default2^
HC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/top_voice.v2default:default2
242default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
VGA2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
232default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
CLK_PLL2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
20092default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CLK_PLL2default:default2
22default:default2
12default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
20092default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
vga_control2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
19142default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter H_SYNC bound to: 96 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter H_BACK bound to: 48 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter H_DISP bound to: 640 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter H_FRONT bound to: 16 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter H_TOTAL bound to: 800 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter V_SYNC bound to: 2 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter V_BACK bound to: 33 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter V_DISP bound to: 480 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter V_FRONT bound to: 10 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter V_TOTAL bound to: 525 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
vga_control2default:default2
32default:default2
12default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
19142default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
vga_display2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
1172default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter CHAR_W_time11 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time11 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time12 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time12 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time13 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time13 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time14 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time14 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time21 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time21 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time22 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time22 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time23 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time23 bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_time24 bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_time24 bound to: 10'b0001000000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_maohao bound to: 10'b0010010110 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_maohao bound to: 10'b0000001010 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_W_maohao bound to: 10'b0000100000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_H_maohao bound to: 10'b0010000000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time11 bound to: 10'b0011111010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time11 bound to: 10'b0000001010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time12 bound to: 10'b0011001000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time12 bound to: 10'b0000001010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time13 bound to: 10'b0001100100 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time13 bound to: 10'b0000001010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time14 bound to: 10'b0000110010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time14 bound to: 10'b0000001010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time21 bound to: 10'b0011111010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time21 bound to: 10'b0001000110 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time22 bound to: 10'b0011001000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time22 bound to: 10'b0001000110 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time23 bound to: 10'b0001100100 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time23 bound to: 10'b0001000110 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_H_time24 bound to: 10'b0000110010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter CHAR_B_V_time24 bound to: 10'b0001000110 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CHAR_B_H_eat_assure bound to: 10'b0011001000 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CHAR_B_V_eat_assure bound to: 10'b0110010000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CHAR_W_eat_assure bound to: 10'b0011000000 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CHAR_H_eat_assure bound to: 10'b0001000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CHAR_B_H_timenow bound to: 10'b0100101100 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CHAR_B_V_timenow bound to: 10'b0000001010 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_W_timenow bound to: 10'b0101000000 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_H_timenow bound to: 10'b0001000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CHAR_B_H_timeset bound to: 10'b0100101100 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CHAR_B_V_timeset bound to: 10'b0001000110 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_W_timeset bound to: 10'b0101000000 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_H_timeset bound to: 10'b0001000000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_H_A bound to: 10'b0011001000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_V_A bound to: 10'b0010001100 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_W_A bound to: 10'b0101100000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_H_A bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_H_Anum bound to: 10'b0010010110 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_V_Anum bound to: 10'b0010001100 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_W_Anum bound to: 10'b0000100000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_H_Anum bound to: 10'b0001000000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_H_B bound to: 10'b0011001000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_V_B bound to: 10'b0011010010 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_W_B bound to: 10'b0101100000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_H_B bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_H_Bnum bound to: 10'b0010010110 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_V_Bnum bound to: 10'b0011010010 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_W_Bnum bound to: 10'b0000100000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_H_Bnum bound to: 10'b0001000000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_H_C bound to: 10'b0011001000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CHAR_B_V_C bound to: 10'b0100011000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_W_C bound to: 10'b0101100000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_H_C bound to: 10'b0001000000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_H_Cnum bound to: 10'b0010010110 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter CHAR_B_V_Cnum bound to: 10'b0100011000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_W_Cnum bound to: 10'b0000100000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_H_Cnum bound to: 10'b0001000000 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter RED bound to: 12'b111110000000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ORANGE bound to: 12'b111111000000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter YELLOW bound to: 12'b111111111110 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter GREEN bound to: 12'b000001111110 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter CYAN bound to: 12'b000001111111 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter BLUE bound to: 12'b000000011111 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter PURPPLE bound to: 12'b111110000001 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter BLACK bound to: 12'b000000000000 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter WHITE bound to: 12'b111111111111 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter GRAY bound to: 12'b110101101001 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3192default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3312default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3432default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3552default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3672default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3792default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3912default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
4032default:default8@Z8-155h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[126][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[125][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[124][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[123][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[122][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[121][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[120][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[119][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[118][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[114][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[113][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[112][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[111][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[110][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[109][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[108][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[107][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[106][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[105][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[104][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[103][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[102][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[101][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2.
char_maohao_reg[100][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[99][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[98][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[97][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[96][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[95][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[94][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[93][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[92][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[91][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[90][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[89][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[88][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[87][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[86][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[85][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[84][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[83][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[82][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[81][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[80][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[79][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[78][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[77][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[76][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[75][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[74][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[73][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[72][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[71][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[70][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[69][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[68][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[67][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[66][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[65][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[64][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[63][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[62][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[61][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[60][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[59][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[58][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[57][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[56][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[55][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[54][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[53][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[52][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[51][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[50][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[49][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[48][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[47][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[46][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[45][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[44][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[43][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[42][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[41][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[40][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[39][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[38][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[37][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[36][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[35][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[34][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[33][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[32][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[31][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[30][31:0]2default:default2.
char_maohao_reg[127][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[29][31:0]2default:default2.
char_maohao_reg[117][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[28][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[27][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[26][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[25][31:0]2default:default2.
char_maohao_reg[115][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2-
char_maohao_reg[24][31:0]2default:default2.
char_maohao_reg[116][31:0]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-4471h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44712default:default2
1002default:defaultZ17-14h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[126]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[125]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[124]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[123]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[122]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[121]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[120]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[119]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[118]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[114]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[113]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[112]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[111]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[110]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[109]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[108]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[107]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[106]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[105]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[104]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[103]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[102]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[101]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
char_maohao_reg[100]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[99]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[98]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[97]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[96]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[95]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[94]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[93]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[92]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[91]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[90]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[89]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[88]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[87]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[86]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[85]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[84]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[83]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[82]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[81]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[80]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[79]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[78]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[77]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[76]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[75]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[74]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[73]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[72]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[71]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[70]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[69]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[68]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[67]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[66]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[65]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[64]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[63]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[62]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[61]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[60]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[59]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[58]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[57]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[56]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[55]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[54]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[53]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[52]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[51]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[50]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[49]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[48]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[47]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[46]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[45]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[44]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[43]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[42]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[41]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[40]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[39]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[38]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[37]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[36]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[35]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[34]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[33]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[32]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[31]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[30]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[29]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[28]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[27]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[26]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[25]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
char_maohao_reg[24]2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
6002default:default8@Z8-6014h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-60142default:default2
1002default:defaultZ17-14h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

char_0[63]2default:default2
vga_display2default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
3042default:default8@Z8-3848h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
vga_display2default:default2
42default:default2
12default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
1172default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA2default:default2
52default:default2
12default:default2X
BC:/digital_system_study/pill_box/pill_box.srcs/sources_1/new/VGA.v2default:default2
232default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
top2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
242default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2 
DecimalSplit2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
522default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
DecimalSplit2default:default2
62default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
522default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
clock2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
662default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	div_clk_s2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
1722default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	div_clk_s2default:default2
72default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
1722default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	div_clk_m2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
1932default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	div_clk_m2default:default2
82default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
1932default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	div_clk_h2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2142default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	div_clk_h2default:default2
92default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2142default:default8@Z8-256h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
min_now_reg2default:default2
clock2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
722default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
hour_now_reg2default:default2
clock2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
732default:default8@Z8-5788h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clock2default:default2
102default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
662default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2"
test_and_alarm2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2352default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
datapath2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2552default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
mux12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3802default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mux12default:default2
112default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3802default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2"
_4bit_register2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3882default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
_4bit_register2default:default2
122default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3882default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	increment2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
4042default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	increment2default:default2
132default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
4042default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
datapath2default:default2
142default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2552default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
FSM2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2702default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter S0 bound to: 0 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter S1 bound to: 1 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter S2 bound to: 2 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter S3 bound to: 3 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter S4 bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3202default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3552default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM2default:default2
152default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2702default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
test_and_alarm2default:default2
162default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
2352default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
172default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
242default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
IBUF2default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
194682default:default8@Z8-638h px� 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUF2default:default2
182default:default2
12default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
194682default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
OBUF2default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
272702default:default8@Z8-638h px� 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DRIVE bound to: 12 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SLEW bound to: SLOW - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
OBUF2default:default2
192default:default2
12default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
272702default:default8@Z8-256h px� 
�
index %s out of range324*oasys2
152default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1932default:default8@Z8-324h px� 
�
synthesizing module '%s'638*oasys2
clk_gen2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/clk_gen.v2default:default2
332default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
clk_div2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/clk_div.v2default:default2
302default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_div2default:default2
202default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/clk_div.v2default:default2
302default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
clk_core2default:default2�
pC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/realtime/clk_core_stub.v2default:default2
52default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_core2default:default2
212default:default2
12default:default2�
pC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/realtime/clk_core_stub.v2default:default2
52default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
BUFHCE2default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
8162default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter CE_TYPE bound to: SYNC - type: string 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter INIT_OUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_CE_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFHCE2default:default2
222default:default2
12default:default2Y
CC:/digital_system_study/Vivado/2017.4/scripts/rt/data/unisim_comp.v2default:default2
8162default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_gen2default:default2
232default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/clk_gen.v2default:default2
332default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
rst_gen2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/rst_gen.v2default:default2
262default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2 
reset_bridge2default:default2i
SC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/reset_bridge.v2default:default2
352default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
reset_bridge2default:default2
242default:default2
12default:default2i
SC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/reset_bridge.v2default:default2
352default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rst_gen2default:default2
252default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/rst_gen.v2default:default2
262default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uart_rx2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_rx.v2default:default2
62default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter BAUD_RATE bound to: 9600 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
meta_harden2default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/meta_harden.v2default:default2
272default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
meta_harden2default:default2
262default:default2
12default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/meta_harden.v2default:default2
272default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2!
uart_baud_gen2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_baud_gen.v2default:default2
352default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter BAUD_RATE bound to: 9600 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter OVERSAMPLE_RATE bound to: 153600 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DIVIDER bound to: 651 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter OVERSAMPLE_VALUE bound to: 650 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CNT_WID bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
uart_baud_gen2default:default2
272default:default2
12default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_baud_gen.v2default:default2
352default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uart_rx_ctl2default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_rx_ctl.v2default:default2
522default:default8@Z8-638h px� 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter START bound to: 2'b01 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter DATA bound to: 2'b10 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter STOP bound to: 2'b11 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx_ctl2default:default2
282default:default2
12default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_rx_ctl.v2default:default2
522default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx2default:default2
292default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_rx.v2default:default2
62default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	cmd_parse2default:default2f
PC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/cmd_parse.v2default:default2
62default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter MAX_ARG_CH bound to: 8 - type: integer 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter RESP_OK bound to: 2'b00 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter RESP_ERR bound to: 2'b01 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter CMD_WAIT bound to: 3'b001 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter GET_ARG bound to: 3'b010 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter SEND_RESP bound to: 3'b011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_W bound to: 7'b1010111 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_R bound to: 7'b1010010 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_N bound to: 7'b1001110 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_P bound to: 7'b1010000 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_S bound to: 7'b1010011 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter CMD_n_l bound to: 7'b1101110 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter CMD_p_l bound to: 7'b1110000 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter CMD_s_l bound to: 7'b1110011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_G bound to: 7'b1000111 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_C bound to: 7'b1000011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter CMD_H bound to: 7'b1001000 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2f
PC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/cmd_parse.v2default:default2
2282default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	cmd_parse2default:default2
302default:default2
12default:default2f
PC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/cmd_parse.v2default:default2
62default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
resp_gen2default:default2e
OC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/resp_gen.v2default:default2
412default:default8@Z8-638h px� 
P
%s
*synth28
$	Parameter RESP_OK bound to: 2'b00 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter RESP_ERR bound to: 2'b01 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter RESP_DATA bound to: 2'b11 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter STR_OK_LEN bound to: 5 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter STR_ERR_LEN bound to: 6 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter STR_DATA_LEN bound to: 13 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter STR_LEN bound to: 13 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CNT_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter LEN_WID bound to: 4 - type: integer 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter IDLE bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter SENDING bound to: 1'b1 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
to_bcd2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/to_bcd.v2default:default2
332default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
to_bcd2default:default2
312default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/to_bcd.v2default:default2
332default:default8@Z8-256h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
	full_case2default:default2e
OC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/resp_gen.v2default:default2
2132default:default8@Z8-3536h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
	full_case2default:default2e
OC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/resp_gen.v2default:default2
2232default:default8@Z8-3536h px� 
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
	full_case2default:default2e
OC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/resp_gen.v2default:default2
2342default:default8@Z8-3536h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
resp_gen2default:default2
322default:default2
12default:default2e
OC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/resp_gen.v2default:default2
412default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	char_fifo2default:default2�
qC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/realtime/char_fifo_stub.v2default:default2
62default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	char_fifo2default:default2
332default:default2
12default:default2�
qC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/realtime/char_fifo_stub.v2default:default2
62default:default8@Z8-256h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2 
char_fifo_i02default:default2
	char_fifo2default:default2
112default:default2
92default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
2922default:default8@Z8-350h px� 
�
synthesizing module '%s'638*oasys2
uart_tx2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_tx.v2default:default2
352default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter BAUD_RATE bound to: 9600 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
uart_tx_ctl2default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_tx_ctl.v2default:default2
602default:default8@Z8-638h px� 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter START bound to: 2'b01 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter DATA bound to: 2'b10 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter STOP bound to: 2'b11 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx_ctl2default:default2
342default:default2
12default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_tx_ctl.v2default:default2
602default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx2default:default2
352default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/uart_tx.v2default:default2
352default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
lb_ctl2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/lb_ctl.v2default:default2
322default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter FILTER bound to: 200000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
	debouncer2default:default2f
PC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/debouncer.v2default:default2
262default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter FILTER bound to: 200000 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter RELOAD bound to: 199999 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FILTER_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
362default:default2
12default:default2f
PC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/debouncer.v2default:default2
262default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lb_ctl2default:default2
372default:default2
12default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/lb_ctl.v2default:default2
322default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
seg7decimal2default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/seg7decimal.v2default:default2
232default:default8@Z8-638h px� 
�
default block is never used226*oasys2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/seg7decimal.v2default:default2
472default:default8@Z8-226h px� 
�
default block is never used226*oasys2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/seg7decimal.v2default:default2
602default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
seg7decimal2default:default2
382default:default2
12default:default2h
RC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/seg7decimal.v2default:default2
232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
bt_uart2default:default2
392default:default2
12default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
42default:default8@Z8-256h px� 

!design %s has unconnected port %s3331*oasys2
bt_uart2default:default2
	sw_pin[5]2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 536.559 ; gain = 280.535
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[15]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[14]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[13]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[12]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[11]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2"
pre_clk_tx[10]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[9]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[8]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[7]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[6]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[5]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[4]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[3]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[2]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[1]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

clk_gen_i02default:default2!
pre_clk_tx[0]2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
1962default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2

rst_gen_i02default:default2
clk_samp2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/bt_uart.v2default:default2
2132default:default8@Z8-3295h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 536.559 ; gain = 280.535
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
V
Loading part %s157*device2#
xc7a35tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
tC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/dcp2/clk_core_in_context.xdc2default:default2,
clk_gen_i0/clk_core_i0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
tC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/dcp2/clk_core_in_context.xdc2default:default2,
clk_gen_i0/clk_core_i0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
uC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/dcp3/char_fifo_in_context.xdc2default:default2"
char_fifo_i0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
uC:/digital_system_study/pill_box/pill_box.runs/synth_1/.Xil/Vivado-3820-DESKTOP-IQTJMIN/dcp3/char_fifo_in_context.xdc2default:default2"
char_fifo_i0	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
beep2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1592default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
alarm2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1612default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
beep2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1642default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
alarm2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1672default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
all2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1882default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
all2default:default2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2
1892default:default8@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2j
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2h
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2-
.Xil/bt_uart_propImpl.xdc2default:defaultZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2h
TC:/digital_system_study/pill_box/pill_box.srcs/constrs_1/imports/new/bt_uart_EGo.xdc2default:default2-
.Xil/bt_uart_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0512default:default2
1105.6802default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:21 . Memory (MB): peak = 1106.766 ; gain = 850.742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:21 . Memory (MB): peak = 1106.766 ; gain = 850.742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:21 . Memory (MB): peak = 1106.766 ; gain = 850.742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
beep2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
cnt_v2default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_1s2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_1min2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_22default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_22default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	clk_1hour2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_32default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count_32default:default2
322default:default2
252default:defaultZ8-5545h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
min_now2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	min_first2default:default2
42default:default2
52default:defaultZ8-5544h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
hour_now2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

hour_first2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
FSM2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
countmux2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

next_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2d
NC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/clk_div.v2default:default2
742default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rx_data_rdy2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	cmd_parse2default:defaultZ8-802h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
state2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
arg_cnt2default:defaultZ8-5546h px� 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
send_resp_val2default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	bt_data162default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	bt_data322default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
state2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dig42default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dig32default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dig22default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
dig12default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
signal_out_reg2default:defaultZ8-5546h px� 
�
!inferring latch for variable '%s'327*oasys2"
next_state_reg2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3232default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
next_state_reg2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3232default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S0 |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S1 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S2 |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S3 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S4 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
FSM2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys21
FSM_sequential_next_state_reg2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3232default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
countmux_reg2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3572default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
countload_reg2default:default2c
MC:/digital_system_study/pill_box/pill_box.srcs/sources_1/imports/new/buzzer.v2default:default2
3582default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                               00 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                CMD_WAIT |                               01 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 GET_ARG |                               10 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_               SEND_RESP |                               11 |                              011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	cmd_parse2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:42 . Memory (MB): peak = 1106.766 ; gain = 850.742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|      |RTL Partition     |Replication |Instances |
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|1     |vga_display__GB0  |           1|     34767|
2default:defaulth p
x
� 
`
%s
*synth2H
4|2     |vga_display__GB1  |           1|      8351|
2default:defaulth p
x
� 
`
%s
*synth2H
4|3     |vga_display__GB2  |           1|     29584|
2default:defaulth p
x
� 
`
%s
*synth2H
4|4     |vga_display__GB3  |           1|      7392|
2default:defaulth p
x
� 
`
%s
*synth2H
4|5     |vga_display__GB4  |           1|       644|
2default:defaulth p
x
� 
`
%s
*synth2H
4|6     |vga_display__GB5  |           1|     30446|
2default:defaulth p
x
� 
`
%s
*synth2H
4|7     |vga_display__GB6  |           1|      7040|
2default:defaulth p
x
� 
`
%s
*synth2H
4|8     |vga_display__GB7  |           1|     30092|
2default:defaulth p
x
� 
`
%s
*synth2H
4|9     |vga_display__GB8  |           1|      7230|
2default:defaulth p
x
� 
`
%s
*synth2H
4|10    |vga_display__GB9  |           1|     14431|
2default:defaulth p
x
� 
`
%s
*synth2H
4|11    |vga_display__GB10 |           1|     29079|
2default:defaulth p
x
� 
`
%s
*synth2H
4|12    |vga_display__GB11 |           1|     11925|
2default:defaulth p
x
� 
`
%s
*synth2H
4|13    |vga_display__GB12 |           1|     12695|
2default:defaulth p
x
� 
`
%s
*synth2H
4|14    |vga_display__GB13 |           1|     26757|
2default:defaulth p
x
� 
`
%s
*synth2H
4|15    |vga_display__GB14 |           1|     22370|
2default:defaulth p
x
� 
`
%s
*synth2H
4|16    |vga_display__GB15 |           1|     23249|
2default:defaulth p
x
� 
`
%s
*synth2H
4|17    |vga_display__GB16 |           1|     22677|
2default:defaulth p
x
� 
`
%s
*synth2H
4|18    |vga_display__GB17 |           1|     31376|
2default:defaulth p
x
� 
`
%s
*synth2H
4|19    |vga_display__GB18 |           1|      7550|
2default:defaulth p
x
� 
`
%s
*synth2H
4|20    |VGA__GC0          |           1|       277|
2default:defaulth p
x
� 
`
%s
*synth2H
4|21    |bt_uart__GC0      |           1|     11339|
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              352 Bit    Registers := 148   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              320 Bit    Registers := 115   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              192 Bit    Registers := 116   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 217   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 48    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     19 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 26    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  64 Input      5 Bit        Muxes := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  64 Input      4 Bit        Muxes := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	 128 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 54    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
<
%s
*synth2$
Module bt_uart 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module vga_display 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 5     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              352 Bit    Registers := 148   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              320 Bit    Registers := 115   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              192 Bit    Registers := 116   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 211   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  64 Input      5 Bit        Muxes := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  64 Input      4 Bit        Muxes := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	 128 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
<
%s
*synth2$
Module CLK_PLL 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module vga_control 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module top_voice 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
>
%s
*synth2&
Module div_clk_s 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
>
%s
*synth2&
Module div_clk_m 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
>
%s
*synth2&
Module div_clk_h 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
:
%s
*synth2"
Module clock 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
9
%s
*synth2!
Module mux1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
C
%s
*synth2+
Module _4bit_register 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module increment 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module div_clk_s__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
Module FSM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
<
%s
*synth2$
Module clk_div 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module reset_bridge__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
D
%s
*synth2,
Module reset_bridge__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
A
%s
*synth2)
Module reset_bridge 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
@
%s
*synth2(
Module meta_harden 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
B
%s
*synth2*
Module uart_baud_gen 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module uart_rx_ctl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module cmd_parse 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
;
%s
*synth2#
Module to_bcd 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 7     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     19 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module resp_gen 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
E
%s
*synth2-
Module uart_baud_gen__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module uart_tx_ctl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
C
%s
*synth2+
Module meta_harden__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
>
%s
*synth2&
Module debouncer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
C
%s
*synth2+
Module meta_harden__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
;
%s
*synth2#
Module lb_ctl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
C
%s
*synth2+
Module seg7decimal__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module seg7decimal 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
u_vga_control/cnt_v2default:defaultZ8-5546h px� 

!design %s has unconnected port %s3331*oasys2
bt_uart2default:default2
	sw_pin[5]2default:defaultZ8-3331h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][1] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][2] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][3] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][5] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][6] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][8] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$u_vga_displayi_1/\char_B_reg[48][9] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][10] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][11] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][12] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][13] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][14] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][15] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][16] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][17] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][18] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][19] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][20] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][21] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][22] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][23] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][26] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][27] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][28] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][29] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][30] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][32] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][33] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][34] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][35] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][36] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][37] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][38] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][39] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][40] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][41] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][42] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][43] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][44] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][45] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][46] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][47] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][48] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][49] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][50] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][51] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][52] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][53] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][54] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][55] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][56] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][57] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][58] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][59] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][60] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][61] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][62] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][63] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][64] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][65] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][66] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][67] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][68] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][69] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][70] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][71] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][72] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][73] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][74] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][75] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][76] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][77] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][78] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][79] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][80] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][81] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][82] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][83] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][84] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][85] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][86] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][87] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][88] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][89] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][90] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][91] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][92] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][93] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][94] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][95] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][96] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%u_vga_displayi_1/\char_B_reg[48][97] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][98] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%u_vga_displayi_1/\char_B_reg[48][99] 2default:defaultZ8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i02default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i12default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i22default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i32default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i42default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i52default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i62default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i72default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i82default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
OBUF_led_i92default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i102default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i112default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i122default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i132default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i142default:default2
bt_uart2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
OBUF_led_i152default:default2
bt_uart2default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[53][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[51][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[40][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[38][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[37][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[36][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[35][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[33][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[32][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[30][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[29][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[28][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[27][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[25][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[24][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[23][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[22][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[21][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[20][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[19][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[18][31]2default:default2
FD2default:default2&
char_4_reg[17][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[17][31]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[14][31]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[53][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[51][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[40][30]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[38][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[37][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[36][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[35][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[33][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[32][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[30][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[29][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[28][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[27][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[25][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[24][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[23][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[22][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[21][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[20][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[19][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[18][30]2default:default2
FD2default:default2&
char_4_reg[17][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[17][30]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[14][30]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[53][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[51][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[40][29]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[38][29]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[37][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[36][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[35][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[33][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[32][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[30][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[29][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[28][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[27][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[25][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[24][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[23][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[22][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[21][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[20][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[19][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[18][29]2default:default2
FD2default:default2&
char_4_reg[17][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[17][29]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[14][29]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[53][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[51][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[40][28]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[38][28]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[37][28]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[36][28]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[35][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[33][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[32][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[30][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[29][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[28][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[27][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[25][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[24][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[23][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[22][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[21][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[20][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[19][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[18][28]2default:default2
FD2default:default2&
char_4_reg[17][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[17][28]2default:default2
FD2default:default2&
char_4_reg[17][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[14][28]2default:default2
FD2default:default2&
char_4_reg[17][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[53][27]2default:default2
FD2default:default2&
char_4_reg[17][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[51][27]2default:default2
FD2default:default2&
char_4_reg[17][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[40][27]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[38][27]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[37][27]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[36][27]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[35][27]2default:default2
FD2default:default2&
char_4_reg[17][16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
char_4_reg[33][27]2default:default2
FD2default:default2&
char_4_reg[17][27]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c1/count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c1/count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2 
c2/c1/clk_1s2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c2/count_22default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c2/count_22default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2"
c2/c2/clk_1min2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c3/count_32default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
c2/c3/count_32default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
c2/c3/clk_1hour2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
c3/d2/c1/count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
c3/d2/c1/count_12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
c3/d2/c1/clk_1s2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys29
%lb_ctl_i0/debouncer_i0/signal_out_reg2default:defaultZ8-5546h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:10 ; elapsed = 00:02:01 . Memory (MB): peak = 1106.766 ; gain = 850.742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|      |RTL Partition     |Replication |Instances |
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|1     |vga_display__GB0  |           1|     12064|
2default:defaulth p
x
� 
`
%s
*synth2H
4|2     |vga_display__GB1  |           1|       255|
2default:defaulth p
x
� 
`
%s
*synth2H
4|3     |vga_display__GB2  |           1|     17144|
2default:defaulth p
x
� 
`
%s
*synth2H
4|4     |vga_display__GB4  |           1|       640|
2default:defaulth p
x
� 
`
%s
*synth2H
4|5     |vga_display__GB5  |           1|     16914|
2default:defaulth p
x
� 
`
%s
*synth2H
4|6     |vga_display__GB7  |           1|     10964|
2default:defaulth p
x
� 
`
%s
*synth2H
4|7     |vga_display__GB8  |           1|       510|
2default:defaulth p
x
� 
`
%s
*synth2H
4|8     |vga_display__GB9  |           1|      1670|
2default:defaulth p
x
� 
`
%s
*synth2H
4|9     |vga_display__GB10 |           1|     28863|
2default:defaulth p
x
� 
`
%s
*synth2H
4|10    |vga_display__GB11 |           1|     11898|
2default:defaulth p
x
� 
`
%s
*synth2H
4|11    |vga_display__GB12 |           1|      2459|
2default:defaulth p
x
� 
`
%s
*synth2H
4|12    |vga_display__GB13 |           1|     17706|
2default:defaulth p
x
� 
`
%s
*synth2H
4|13    |vga_display__GB14 |           1|     12939|
2default:defaulth p
x
� 
`
%s
*synth2H
4|14    |vga_display__GB15 |           1|      1563|
2default:defaulth p
x
� 
`
%s
*synth2H
4|15    |vga_display__GB16 |           1|       785|
2default:defaulth p
x
� 
`
%s
*synth2H
4|16    |vga_display__GB17 |           1|      9512|
2default:defaulth p
x
� 
`
%s
*synth2H
4|17    |vga_display__GB18 |           1|       510|
2default:defaulth p
x
� 
`
%s
*synth2H
4|18    |VGA__GC0          |           1|       186|
2default:defaulth p
x
� 
`
%s
*synth2H
4|19    |bt_uart__GC0      |           1|      2115|
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
clk_gen_i0/clk_core_i0/clk_out12default:default2<
(clk_gen_i0/clk_core_i0/bbstub_clk_out1/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
clk_gen_i0/clk_core_i0/clk_out22default:default2<
(clk_gen_i0/clk_core_i0/bbstub_clk_out2/O2default:defaultZ8-5578h px� 
�
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
22default:defaultZ8-5819h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:12 ; elapsed = 00:02:07 . Memory (MB): peak = 1178.254 ; gain = 922.230
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:01:13 ; elapsed = 00:02:10 . Memory (MB): peak = 1208.555 ; gain = 952.531
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|      |RTL Partition     |Replication |Instances |
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|1     |vga_display__GB0  |           1|      1194|
2default:defaulth p
x
� 
`
%s
*synth2H
4|2     |vga_display__GB1  |           1|       242|
2default:defaulth p
x
� 
`
%s
*synth2H
4|3     |vga_display__GB2  |           1|      1031|
2default:defaulth p
x
� 
`
%s
*synth2H
4|4     |vga_display__GB4  |           1|       554|
2default:defaulth p
x
� 
`
%s
*synth2H
4|5     |vga_display__GB5  |           1|      3200|
2default:defaulth p
x
� 
`
%s
*synth2H
4|6     |vga_display__GB7  |           1|       619|
2default:defaulth p
x
� 
`
%s
*synth2H
4|7     |vga_display__GB8  |           1|       409|
2default:defaulth p
x
� 
`
%s
*synth2H
4|8     |vga_display__GB9  |           1|       997|
2default:defaulth p
x
� 
`
%s
*synth2H
4|9     |vga_display__GB10 |           1|      4950|
2default:defaulth p
x
� 
`
%s
*synth2H
4|10    |vga_display__GB11 |           1|      1683|
2default:defaulth p
x
� 
`
%s
*synth2H
4|11    |vga_display__GB12 |           1|       939|
2default:defaulth p
x
� 
`
%s
*synth2H
4|12    |vga_display__GB13 |           1|      6371|
2default:defaulth p
x
� 
`
%s
*synth2H
4|13    |vga_display__GB14 |           1|      2201|
2default:defaulth p
x
� 
`
%s
*synth2H
4|14    |vga_display__GB15 |           1|       802|
2default:defaulth p
x
� 
`
%s
*synth2H
4|15    |vga_display__GB16 |           1|       785|
2default:defaulth p
x
� 
`
%s
*synth2H
4|16    |vga_display__GB17 |           1|       828|
2default:defaulth p
x
� 
`
%s
*synth2H
4|17    |vga_display__GB18 |           1|       426|
2default:defaulth p
x
� 
`
%s
*synth2H
4|18    |VGA__GC0          |           1|       178|
2default:defaulth p
x
� 
`
%s
*synth2H
4|19    |bt_uart__GC0      |           1|      2094|
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:14 ; elapsed = 00:02:13 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:14 ; elapsed = 00:02:14 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |char_fifo     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |clk_core      |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|1     |char_fifo |     1|
2default:defaulth px� 
G
%s*synth2/
|2     |clk_core  |     1|
2default:defaulth px� 
G
%s*synth2/
|3     |BUFG      |     3|
2default:defaulth px� 
G
%s*synth2/
|4     |BUFHCE    |     1|
2default:defaulth px� 
G
%s*synth2/
|5     |CARRY4    |    78|
2default:defaulth px� 
G
%s*synth2/
|6     |LUT1      |    46|
2default:defaulth px� 
G
%s*synth2/
|7     |LUT2      |   279|
2default:defaulth px� 
G
%s*synth2/
|8     |LUT3      |   511|
2default:defaulth px� 
G
%s*synth2/
|9     |LUT4      |   506|
2default:defaulth px� 
G
%s*synth2/
|10    |LUT5      |  1117|
2default:defaulth px� 
G
%s*synth2/
|11    |LUT6      |  4125|
2default:defaulth px� 
G
%s*synth2/
|12    |MUXF7     |  1001|
2default:defaulth px� 
G
%s*synth2/
|13    |MUXF8     |   258|
2default:defaulth px� 
G
%s*synth2/
|14    |FDCE      |   254|
2default:defaulth px� 
G
%s*synth2/
|15    |FDPE      |    15|
2default:defaulth px� 
G
%s*synth2/
|16    |FDRE      |   198|
2default:defaulth px� 
G
%s*synth2/
|17    |FDSE      |    22|
2default:defaulth px� 
G
%s*synth2/
|18    |LD        |     5|
2default:defaulth px� 
G
%s*synth2/
|19    |LDC       |    11|
2default:defaulth px� 
G
%s*synth2/
|20    |IBUF      |    11|
2default:defaulth px� 
G
%s*synth2/
|21    |OBUF      |    55|
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-------------------------------+----------------+------+
2default:defaulth p
x
� 
m
%s
*synth2U
A|      |Instance                       |Module          |Cells |
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-------------------------------+----------------+------+
2default:defaulth p
x
� 
m
%s
*synth2U
A|1     |top                            |                |  8511|
2default:defaulth p
x
� 
m
%s
*synth2U
A|2     |  alert                        |top_voice       |   103|
2default:defaulth p
x
� 
m
%s
*synth2U
A|3     |  clk_gen_i0                   |clk_gen         |    46|
2default:defaulth p
x
� 
m
%s
*synth2U
A|4     |    clk_div_i0                 |clk_div         |    41|
2default:defaulth p
x
� 
m
%s
*synth2U
A|5     |  cmd_parse_i0                 |cmd_parse       |   176|
2default:defaulth p
x
� 
m
%s
*synth2U
A|6     |  lb_ctl_i0                    |lb_ctl          |    71|
2default:defaulth p
x
� 
m
%s
*synth2U
A|7     |    debouncer_i0               |debouncer       |    67|
2default:defaulth p
x
� 
m
%s
*synth2U
A|8     |      meta_harden_signal_in_i0 |meta_harden_5   |     4|
2default:defaulth p
x
� 
m
%s
*synth2U
A|9     |    meta_harden_rxd_i0         |meta_harden_4   |     3|
2default:defaulth p
x
� 
m
%s
*synth2U
A|10    |  resp_gen_i0                  |resp_gen        |    23|
2default:defaulth p
x
� 
m
%s
*synth2U
A|11    |  rst_gen_i0                   |rst_gen         |     4|
2default:defaulth p
x
� 
m
%s
*synth2U
A|12    |    reset_bridge_clk_rx_i0     |reset_bridge    |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|13    |    reset_bridge_clk_tx_i0     |reset_bridge_3  |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|14    |  seg7_0                       |seg7decimal     |    41|
2default:defaulth p
x
� 
m
%s
*synth2U
A|15    |  seg7_1                       |seg7decimal_0   |    41|
2default:defaulth p
x
� 
m
%s
*synth2U
A|16    |  uart_rx_i0                   |uart_rx         |    88|
2default:defaulth p
x
� 
m
%s
*synth2U
A|17    |    meta_harden_rxd_i0         |meta_harden     |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|18    |    uart_baud_gen_rx_i0        |uart_baud_gen_2 |    26|
2default:defaulth p
x
� 
m
%s
*synth2U
A|19    |    uart_rx_ctl_i0             |uart_rx_ctl     |    60|
2default:defaulth p
x
� 
m
%s
*synth2U
A|20    |  uart_tx_i0                   |uart_tx         |    59|
2default:defaulth p
x
� 
m
%s
*synth2U
A|21    |    uart_baud_gen_tx_i0        |uart_baud_gen   |    27|
2default:defaulth p
x
� 
m
%s
*synth2U
A|22    |    uart_tx_ctl_i0             |uart_tx_ctl     |    32|
2default:defaulth p
x
� 
m
%s
*synth2U
A|23    |  vga                          |VGA             |  7197|
2default:defaulth p
x
� 
m
%s
*synth2U
A|24    |    CLK_PLL_inst               |CLK_PLL         |     4|
2default:defaulth p
x
� 
m
%s
*synth2U
A|25    |    u_vga_control              |vga_control     |  7171|
2default:defaulth p
x
� 
m
%s
*synth2U
A|26    |    u_vga_display              |vga_display     |    22|
2default:defaulth p
x
� 
m
%s
*synth2U
A|27    |  warning                      |top             |   579|
2default:defaulth p
x
� 
m
%s
*synth2U
A|28    |    c2                         |clock           |   432|
2default:defaulth p
x
� 
m
%s
*synth2U
A|29    |      c1                       |div_clk_s_1     |   105|
2default:defaulth p
x
� 
m
%s
*synth2U
A|30    |      c2                       |div_clk_m       |   107|
2default:defaulth p
x
� 
m
%s
*synth2U
A|31    |      c3                       |div_clk_h       |   108|
2default:defaulth p
x
� 
m
%s
*synth2U
A|32    |    c3                         |test_and_alarm  |   145|
2default:defaulth p
x
� 
m
%s
*synth2U
A|33    |      d1                       |datapath        |     9|
2default:defaulth p
x
� 
m
%s
*synth2U
A|34    |        a2                     |_4bit_register  |     9|
2default:defaulth p
x
� 
m
%s
*synth2U
A|35    |      d2                       |FSM             |   136|
2default:defaulth p
x
� 
m
%s
*synth2U
A|36    |        c1                     |div_clk_s       |   105|
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-------------------------------+----------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:14 ; elapsed = 00:02:15 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 33 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:03 ; elapsed = 00:02:02 . Memory (MB): peak = 1216.098 ; gain = 389.867
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:14 ; elapsed = 00:02:15 . Memory (MB): peak = 1216.098 ; gain = 960.074
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
13642default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
bt_uart2default:default2
vga_control2default:defaultZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
12default:defaultZ31-140h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2v
b  A total of 16 instances were transformed.
  LD => LDCE: 5 instances
  LDC => LDCE: 11 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4782default:default2
1532default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:162default:default2
00:02:182default:default2
1216.0982default:default2
971.5622default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BC:/digital_system_study/pill_box/pill_box.runs/synth_1/bt_uart.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file bt_uart_utilization_synth.rpt -pb bt_uart_utilization_synth.pb
2default:defaulth px� 
�
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.024 . Memory (MB): peak = 1216.098 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jun 29 21:54:47 20242default:defaultZ17-206h px� 


End Record