
t
Command: %s
53*	vivadotcl2C
/synth_design -top SPI_top -part xc7a35tcsg324-12default:defaultZ4-113h px� 
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
xStarting RTL Elaboration : Time (s): cpu = 00:00:00 ; elapsed = 00:00:03 . Memory (MB): peak = 346.523 ; gain = 103.277
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
SPI_top2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
212default:default8@Z8-638h px� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter LOAD bound to: 4'b0001 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter WAIT bound to: 4'b0010 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter ENDING bound to: 4'b0011 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
772default:default8@Z8-155h px� 
�
synthesizing module '%s'638*oasys2!
clock_divider2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
3362default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
clock_divider2default:default2
12default:default2
12default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
3362default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2#
SPI_transmitter2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1712default:default8@Z8-638h px� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter START bound to: 4'b0001 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter INST_OUT bound to: 4'b0010 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter ADDR_OUT bound to: 4'b0011 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter WRITE_DATA bound to: 4'b0100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter READ_DATA bound to: 4'b0101 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter ENDING bound to: 4'b0110 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
2482default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
SPI_transmitter2default:default2
22default:default2
12default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1712default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
mean_filter2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
12default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter FILTER_CNT bound to: 32 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter BIT_CNT bound to: 5 - type: integer 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter WAITING bound to: 2'b11 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1092default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter N bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[1]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[2]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[3]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[4]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[5]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[6]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[7]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[8]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

ram_reg[9]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[10]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[11]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[12]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[13]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[14]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[15]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[16]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[17]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[18]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[19]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[20]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[21]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[22]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[23]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[24]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[25]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[26]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[27]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[28]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[29]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[30]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ram_reg[31]2default:default2
mean_ram2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1252default:default8@Z8-5788h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mean_ram2default:default2
32default:default2
12default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1092default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mean_filter2default:default2
42default:default2
12default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
12default:default8@Z8-256h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
data_in2default:default2
82default:default2
mean_filter2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1632default:default8@Z8-689h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
mean_x2default:default2
mean_filter2default:default2
62default:default2
52default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1632default:default8@Z8-350h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
data_in2default:default2
82default:default2
mean_filter2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1642default:default8@Z8-689h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
mean_y2default:default2
mean_filter2default:default2
62default:default2
52default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1642default:default8@Z8-350h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
392default:default2
data_in2default:default2
82default:default2
mean_filter2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1652default:default8@Z8-689h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
mean_z2default:default2
mean_filter2default:default2
62default:default2
52default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1652default:default8@Z8-350h px� 
�
synthesizing module '%s'638*oasys2
	alarm_top2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
232default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
control2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
512default:default8@Z8-638h px� 
�
-case statement is not full and has no default155*oasys2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
772default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1022default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
control2default:default2
52default:default2
12default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
512default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
datapath2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1292default:default8@Z8-638h px� 
]
%s
*synth2E
1	Parameter thr1 bound to: 12288 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
register2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1522default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter N bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
register2default:default2
62default:default2
12default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1522default:default8@Z8-256h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2 
register_SMV2default:default2
register2default:default2
62default:default2
52default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1422default:default8@Z8-350h px� 
�
synthesizing module '%s'638*oasys2
adder2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1672default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
adder2default:default2
72default:default2
12default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1672default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
datapath2default:default2
82default:default2
12default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1292default:default8@Z8-256h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
dp2default:default2
datapath2default:default2
92default:default2
82default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
472default:default8@Z8-350h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	alarm_top2default:default2
92default:default2
12default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
232default:default8@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
slow_clk_d_reg2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
1432default:default8@Z8-6014h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
next_state_reg2default:default2
SPI_top2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
762default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
data_reg2default:default2
SPI_top2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
852default:default8@Z8-5788h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SPI_top2default:default2
102default:default2
12default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
212default:default8@Z8-256h px� 
}
!design %s has unconnected port %s3331*oasys2
datapath2default:default2
clk_1s2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mean_ram2default:default2

rd_addr[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mean_ram2default:default2

rd_addr[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mean_ram2default:default2

rd_addr[5]2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:00 ; elapsed = 00:00:03 . Memory (MB): peak = 398.762 ; gain = 155.516
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
register_SMV2default:default2
clear2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1422default:default8@Z8-3295h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 398.762 ; gain = 155.516
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
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
�
Parsing XDC File [%s]
179*designutils2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
ACL_INT12default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
132default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
132default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED_INT12default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
152default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
152default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED_INT12default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
172default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
172default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
ACL_INT12default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
202default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
202default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[6]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
252default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
252default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[0]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
262default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
262default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[1]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
272default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
272default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[2]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
282default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
282default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[3]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
292default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
292default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[4]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
302default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
302default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[5]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[7]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[0]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
332default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
332default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[1]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
342default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[2]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
352default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
352default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[3]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
362default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
362default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[4]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
372default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
372default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[5]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
382default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
382default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[6]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
392default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
392default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2!
read_light[7]2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
402default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
402default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
test32default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
532default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
532default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
test32default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
542default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2
542default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2d
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2b
NC:/digital_system_study/SPI/SPI.srcs/constrs_1/imports/new/adxl_constraint.xdc2default:default2-
.Xil/SPI_top_propImpl.xdc2default:defaultZ1-236h px� 
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
00:00:00.0012default:default2
732.5942default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 732.594 ; gain = 489.348
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 732.594 ; gain = 489.348
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 732.594 ; gain = 489.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
slow_clk2default:defaultZ8-5546h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
SPI_transmitter2default:defaultZ8-802h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
next_state_reg2default:default2b
LC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/SPI_transmitter.v2default:default2
2512default:default8@Z8-6014h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
ready_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
ready_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
ready_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
ready_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
ready_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
SCLK_negedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
next_state02default:default2
12default:default2
52default:defaultZ8-5544h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[0]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[1]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[2]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[3]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[4]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[5]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[6]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[7]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[8]2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ram_reg[9]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[10]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[11]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[12]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[13]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[14]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[15]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[16]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[17]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[18]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[19]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[20]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[21]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[22]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[23]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[24]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[25]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[26]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[27]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[28]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[29]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[30]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ram_reg[31]2default:defaultZ8-5546h px� 
�
merging register '%s' into '%s'3619*oasys2 
mean_vld_reg2default:default2!
rd_domain_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
962default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
mean_vld_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
962default:default8@Z8-6014h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rd_domain2default:defaultZ8-5546h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
control2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
SMV_load2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
SMV_load2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
SMV_load2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
SMV_load2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
n_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
n_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_1s2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
ready2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
clk_counter2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
read_data_x2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
din_valid_posedge2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
read_data_y2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
read_data_z2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
data2default:default2
42default:default2
52default:defaultZ8-5544h px� 
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
_                    IDLE |                              000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   START |                              001 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                INST_OUT |                              010 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                ADDR_OUT |                              011 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_               READ_DATA |                              100 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_              WRITE_DATA |                              101 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                  ENDING |                              110 |                             0110
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

sequential2default:default2#
SPI_transmitter2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
n_state_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1042default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
n_state_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1042default:default8@Z8-327h px� 
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
_                  iSTATE |                               00 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                               01 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                               10 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                               11 |                              011
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

sequential2default:default2
control2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2.
FSM_sequential_n_state_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
1042default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
SMV_load_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
792default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

M_load_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
812default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
M_clear_reg2default:default2c
MC:/digital_system_study/SPI/SPI.srcs/sources_1/imports/new/fallen_detection.v2default:default2
802default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:10 . Memory (MB): peak = 732.594 ; gain = 489.348
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
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     13 Bit       Adders := 3     
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
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
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
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
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
.	               13 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 120   
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
.	                4 Bit    Registers := 4     
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
.	                1 Bit    Registers := 23    
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
.	   2 Input     13 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
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
.	   7 Input      4 Bit        Muxes := 2     
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
.	   2 Input      3 Bit        Muxes := 1     
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
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 137   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
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
Module SPI_top 
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
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 3     
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
.	               24 Bit    Registers := 1     
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
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
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
.	   2 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
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
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
B
%s
*synth2*
Module clock_divider 
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
.	   2 Input     13 Bit       Adders := 1     
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
.	               13 Bit    Registers := 1     
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
.	   2 Input     13 Bit        Muxes := 1     
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
D
%s
*synth2,
Module SPI_transmitter 
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
.	                8 Bit    Registers := 3     
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
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
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
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 2     
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
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 2     
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
.	   2 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
=
%s
*synth2%
Module mean_ram 
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
.	                8 Bit    Registers := 33    
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
.	   2 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
� 
@
%s
*synth2(
Module mean_filter 
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
.	   4 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 3     
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
.	               13 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 5     
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
.	   2 Input     13 Bit        Muxes := 1     
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
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
<
%s
*synth2$
Module control 
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
.	                3 Bit    Registers := 1     
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
.	   2 Input      3 Bit        Muxes := 1     
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
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      2 Bit        Muxes := 1     
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
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module register 
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
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
:
%s
*synth2"
Module adder 
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
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module alarm_top 
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
.	   2 Input      1 Bit        Muxes := 1     
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
merging register '%s' into '%s'3619*oasys2$
mean_y/wr_en_reg2default:default2$
mean_x/wr_en_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
342default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2$
mean_z/wr_en_reg2default:default2$
mean_x/wr_en_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
342default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys25
!mean_x/u_mean_ram_inst/rd_vld_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1372default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys25
!mean_y/u_mean_ram_inst/rd_vld_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1372default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
mean_y/wr_en_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
342default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys25
!mean_z/u_mean_ram_inst/rd_vld_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
1372default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
mean_z/wr_en_reg2default:default2Q
;C:/digital_system_study/SPI/SPI.srcs/sources_1/new/filter.v2default:default2
342default:default8@Z8-6014h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
clk_5000/slow_clk2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[0]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[1]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[2]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[3]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[4]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[5]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[6]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[7]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[8]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_x/u_mean_ram_inst/ram_reg[9]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[10]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[11]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[12]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[13]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[14]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[15]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[16]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[17]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[18]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[19]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[20]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[21]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[22]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[23]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[24]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[25]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[26]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[27]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[28]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[29]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[30]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_x/u_mean_ram_inst/ram_reg[31]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
mean_x/rd_domain2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[0]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[1]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[2]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[3]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[4]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[5]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[6]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[7]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[8]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys25
!mean_y/u_mean_ram_inst/ram_reg[9]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[10]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[11]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[12]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[13]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[14]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[15]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[16]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[17]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[18]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[19]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[20]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[21]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[22]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[23]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[24]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[25]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[26]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[27]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[28]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[29]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"mean_y/u_mean_ram_inst/ram_reg[30]2default:defaultZ8-5546h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55462default:default2
1002default:defaultZ17-14h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2'
nolabel_line166/cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2*
nolabel_line166/clk_1s2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[17]2default:default2
FDE2default:default2 
data_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
data_reg[2]2default:default2
FDE2default:default2
data_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[18]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[12]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[20]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[21]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
clk_counter_reg[10]2default:default2
FDCE2default:default2'
clk_counter_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
clk_counter_reg[11]2default:default2
FDCE2default:default2'
clk_counter_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
clk_counter_reg[12]2default:default2
FDCE2default:default2'
clk_counter_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
clk_counter_reg[13]2default:default2
FDCE2default:default2'
clk_counter_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
clk_counter_reg[15]2default:default2
FDCE2default:default2'
clk_counter_reg[14]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\clk_counter_reg[14] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
next_state_reg[2]2default:default2
FDE2default:default2%
next_state_reg[3]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\next_state_reg[3] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
mean_y/wr_data_reg[7]2default:default2
FDC2default:default2)
mean_z/wr_data_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
mean_z/wr_data_reg[7]2default:default2
FDC2default:default2)
mean_x/wr_data_reg[7]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2+
\mean_x/wr_data_reg[7] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[14]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[22]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
state_reg[2]2default:default2
FDC2default:default25
!spi_transmitter/SCLK_count_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
state_reg[3]2default:default2
FDC2default:default25
!spi_transmitter/SCLK_count_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!spi_transmitter/SCLK_count_reg[4]2default:default2
FDC2default:default25
!spi_transmitter/SCLK_count_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!spi_transmitter/SCLK_count_reg[5]2default:default2
FDC2default:default25
!spi_transmitter/SCLK_count_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!spi_transmitter/SCLK_count_reg[7]2default:default2
FDC2default:default25
!spi_transmitter/SCLK_count_reg[6]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default27
#\spi_transmitter/SCLK_count_reg[6] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
data_reg[15]2default:default2
FDE2default:default2 
data_reg[23]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\data_reg[23] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[31][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[30][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[29][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[28][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[27][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[26][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[25][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[24][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[23][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[22][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[21][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[20][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[19][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[18][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[17][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[16][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[15][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[14][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[13][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[12][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[11][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_y/u_mean_ram_inst/ram_reg[10][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[9][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[8][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[7][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[6][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[5][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[4][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[3][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[2][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_y/u_mean_ram_inst/ram_reg[1][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[31][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[30][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[29][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[28][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[27][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[26][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[25][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[24][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[23][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[22][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[21][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[20][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[19][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[18][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[17][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[16][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[15][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[14][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[13][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[12][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[11][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_z/u_mean_ram_inst/ram_reg[10][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[9][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[8][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[7][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[6][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[5][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[4][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[3][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[2][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_z/u_mean_ram_inst/ram_reg[1][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[31][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[30][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[29][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[28][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[27][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[26][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[25][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[24][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[23][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[22][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[21][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[20][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[19][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[18][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[17][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[16][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[15][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[14][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[13][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[12][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[11][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\mean_x/u_mean_ram_inst/ram_reg[10][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[9][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[8][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[7][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[6][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[5][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[4][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[3][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[2][7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\mean_x/u_mean_ram_inst/ram_reg[1][7] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2nolabel_line166/ctrl/FSM_sequential_n_state_reg[1]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2nolabel_line166/ctrl/FSM_sequential_n_state_reg[0]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!nolabel_line166/ctrl/SMV_load_reg2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
nolabel_line166/ctrl/M_load_reg2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 nolabel_line166/ctrl/M_clear_reg2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
next_state_reg[3]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
data_reg[23]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[0][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[1][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[2][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[3][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[4][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[5][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[6][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[7][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[8][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_x/u_mean_ram_inst/ram_reg[9][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[10][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[11][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[12][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[13][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[14][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[15][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[16][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[17][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[18][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[19][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[20][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[21][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[22][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[23][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[24][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[25][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[26][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[27][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[28][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[29][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[30][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/ram_reg[31][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_x/u_mean_ram_inst/rd_data_reg[7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[0][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[1][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[2][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[3][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[4][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[5][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[6][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[7][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[8][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_z/u_mean_ram_inst/ram_reg[9][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[10][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[11][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[12][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[13][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[14][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[15][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[16][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[17][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[18][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[19][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[20][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[21][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[22][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[23][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[24][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[25][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[26][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[27][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[28][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[29][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[30][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/ram_reg[31][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_z/u_mean_ram_inst/rd_data_reg[7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[0][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[1][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[2][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[3][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[4][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[5][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[6][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[7][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[8][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$mean_y/u_mean_ram_inst/ram_reg[9][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[10][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[11][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[12][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[13][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[14][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[15][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[16][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[17][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[18][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[19][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[20][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[21][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[22][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[23][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[24][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[25][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%mean_y/u_mean_ram_inst/ram_reg[26][7]2default:default2
SPI_top2default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default27
#\spi_transmitter/MOSI_count_reg[3] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:03 ; elapsed = 00:00:13 . Memory (MB): peak = 732.594 ; gain = 489.348
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:18 . Memory (MB): peak = 736.711 ; gain = 493.465
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
|Finished Timing Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:18 . Memory (MB): peak = 738.367 ; gain = 495.121
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
{Finished Technology Mapping : Time (s): cpu = 00:00:04 ; elapsed = 00:00:18 . Memory (MB): peak = 774.449 ; gain = 531.203
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
uFinished IO Insertion : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
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
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    62|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     4|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |   165|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    89|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |   124|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |   140|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |   388|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |    84|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   |   287|
2default:defaulth px� 
D
%s*synth2,
|11    |FDPE   |     1|
2default:defaulth px� 
D
%s*synth2,
|12    |FDRE   |   723|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |     4|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |     7|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|      |Instance            |Module          |Cells |
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|1     |top                 |                |  2080|
2default:defaulth p
x
� 
b
%s
*synth2J
6|2     |  clk_5000          |clock_divider   |    33|
2default:defaulth p
x
� 
b
%s
*synth2J
6|3     |  mean_x            |mean_filter     |   560|
2default:defaulth p
x
� 
b
%s
*synth2J
6|4     |    u_mean_ram_inst |mean_ram_3      |   384|
2default:defaulth p
x
� 
b
%s
*synth2J
6|5     |  mean_y            |mean_filter_0   |   571|
2default:defaulth p
x
� 
b
%s
*synth2J
6|6     |    u_mean_ram_inst |mean_ram_2      |   377|
2default:defaulth p
x
� 
b
%s
*synth2J
6|7     |  mean_z            |mean_filter_1   |   569|
2default:defaulth p
x
� 
b
%s
*synth2J
6|8     |    u_mean_ram_inst |mean_ram        |   377|
2default:defaulth p
x
� 
b
%s
*synth2J
6|9     |  nolabel_line166   |alarm_top       |   127|
2default:defaulth p
x
� 
b
%s
*synth2J
6|10    |    ctrl            |control         |    14|
2default:defaulth p
x
� 
b
%s
*synth2J
6|11    |    dp              |datapath        |    31|
2default:defaulth p
x
� 
b
%s
*synth2J
6|12    |      adder_M       |adder           |     3|
2default:defaulth p
x
� 
b
%s
*synth2J
6|13    |      register_SMV  |register        |    28|
2default:defaulth p
x
� 
b
%s
*synth2J
6|14    |  spi_transmitter   |SPI_transmitter |    95|
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+--------------------+----------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 141 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:03 ; elapsed = 00:00:15 . Memory (MB): peak = 774.449 ; gain = 197.371
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:04 ; elapsed = 00:00:19 . Memory (MB): peak = 774.449 ; gain = 531.203
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1502default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2972default:default2
1822default:default2
222default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:052default:default2
00:00:222default:default2
774.4492default:default2
543.8282default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2L
8C:/digital_system_study/SPI/SPI.runs/synth_1/SPI_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file SPI_top_utilization_synth.rpt -pb SPI_top_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.014 . Memory (MB): peak = 774.449 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jun  9 16:21:29 20242default:defaultZ17-206h px� 


End Record