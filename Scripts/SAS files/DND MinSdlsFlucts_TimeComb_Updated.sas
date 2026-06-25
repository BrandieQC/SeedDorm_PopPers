
data minsdlsfluctsctrl;
input popid $ block $ RIL $ dorm $ envt $ timeperiod $ flucts;
sflucts = sqrt(flucts + 438);
lflucts = log(flucts + 438);
llflucts = log10(flucts + 438);
if envt NE 'Control' then delete;
/*if RIL NE 'TC' then delete;
if dorm = 'Dormant' then delete;*/
title 'minsdls Population Size Fluctuations - CTRL Only';
datalines;
A_0	1	IS	Dormant	Litter	Y1toY2	-42
A_1	1	BS	Dormant	Control	Y1toY2	257
A_10	3	IS	NonDorm	Litter	Y1toY2	-4
A_11	3	TC	Dormant	Control	Y1toY2	43
A_12	3	BS	Mixed	Control	Y1toY2	27
A_2	1	TC	Dormant	Control	Y1toY2	-8
A_3	1	IS	NonDorm	Litter	Y1toY2	-237
A_4	1	IS	Mixed	HH	Y1toY2	402
A_5	2	IS	Mixed	Litter	Y1toY2	-20
A_6	2	BS	Dormant	Litter	Y1toY2	-4
A_7	2	IS	Mixed	Soil	Y1toY2	-52
A_8	2	TC	Mixed	Control	Y1toY2	10
A_9	3	IS	Dormant	Soil	Y1toY2	-35
B_0	1	IS	Dormant	Soil	Y1toY2	-10
B_1	1	IS	Mixed	Control	Y1toY2	46
B_10	3	TC	NonDorm	Control	Y1toY2	-1
B_11	3	IS	NonDorm	Soil	Y1toY2	-21
B_12	3	IS	Mixed	Soil	Y1toY2	-28
B_13	3	IS	Dormant	Litter	Y1toY2	0
B_2	1	IS	NonDorm	HH	Y1toY2	-438
B_3	1	BS	NonDorm	Control	Y1toY2	5
B_4	1	IS	Dormant	HH	Y1toY2	-19
B_5	2	TC	Dormant	Control	Y1toY2	36
B_6	2	IS	NonDorm	HH	Y1toY2	191
B_7	2	IS	Mixed	Control	Y1toY2	41
B_8	2	BS	NonDorm	Control	Y1toY2	40
B_9	3	TC	Mixed	Control	Y1toY2	4
C_0	1	BS	NonDorm	Litter	Y1toY2	-2
C_1	1	IS	Dormant	Control	Y1toY2	-3
C_10	3	IS	Dormant	HH	Y1toY2	31
C_11	3	BS	NonDorm	Litter	Y1toY2	2
C_12	3	BS	Dormant	Control	Y1toY2	2
C_13	3	IS	Mixed	HH	Y1toY2	-3
C_2	1	IS	NonDorm	Control	Y1toY2	31
C_3	1	IS	Mixed	Litter	Y1toY2	-41
C_4	1	BS	Dormant	Litter	Y1toY2	-8
C_5	2	TC	NonDorm	Control	Y1toY2	38
C_6	2	BS	Dormant	Control	Y1toY2	19
C_7	2	IS	Dormant	Control	Y1toY2	1
C_9	3	IS	Mixed	Control	Y1toY2	1
D_0	1	TC	Mixed	Control	Y1toY2	-13
D_1	1	BS	Mixed	Control	Y1toY2	192
D_10	3	IS	Mixed	Litter	Y1toY2	33
D_11	3	BS	NonDorm	Control	Y1toY2	7
D_12	3	BS	Dormant	Litter	Y1toY2	0
D_13	3	IS	Dormant	Control	Y1toY2	-3
D_2	1	IS	NonDorm	Soil	Y1toY2	-43
D_3	1	IS	Mixed	Soil	Y1toY2	-19
D_4	1	TC	NonDorm	Control	Y1toY2	11
D_5	2	IS	Mixed	HH	Y1toY2	190
D_6	2	IS	Dormant	HH	Y1toY2	74
D_8	2	IS	NonDorm	Litter	Y1toY2	46
D_9	3	IS	NonDorm	Control	Y1toY2	-26
E_1	4	IS	NonDorm	Soil	Y1toY2	-32
E_10	6	BS	Mixed	Control	Y1toY2	16
E_11	6	IS	Dormant	Control	Y1toY2	1
E_12	6	IS	Mixed	Control	Y1toY2	4
E_13	3	IS	NonDorm	HH	Y1toY2	74
E_2	4	IS	Mixed	Control	Y1toY2	16
E_3	4	IS	NonDorm	Control	Y1toY2	40
E_4	4	BS	NonDorm	Litter	Y1toY2	5
E_5	2	BS	NonDorm	Litter	Y1toY2	24
E_7	2	IS	Dormant	Litter	Y1toY2	7
E_8	2	IS	NonDorm	Control	Y1toY2	7
E_9	6	IS	Dormant	Soil	Y1toY2	31
F_1	4	BS	Dormant	Control	Y1toY2	35
F_10	6	BS	Dormant	Control	Y1toY2	4
F_11	6	TC	Mixed	Control	Y1toY2	1
F_12	6	IS	NonDorm	Soil	Y1toY2	55
F_13	6	BS	Dormant	Litter	Y1toY2	0
F_2	4	TC	NonDorm	Control	Y1toY2	28
F_3	4	IS	Dormant	HH	Y1toY2	143
F_4	4	IS	Mixed	HH	Y1toY2	243
F_6	2	IS	Dormant	Soil	Y1toY2	26
F_7	2	BS	Mixed	Control	Y1toY2	144
F_8	2	IS	NonDorm	Soil	Y1toY2	36
F_9	6	IS	NonDorm	Control	Y1toY2	-3
G_1	4	BS	NonDorm	Control	Y1toY2	4
G_10	6	IS	Mixed	Litter	Y1toY2	-10
G_11	6	IS	Mixed	Soil	Y1toY2	81
G_12	6	TC	Dormant	Control	Y1toY2	72
G_13	6	BS	NonDorm	Litter	Y1toY2	0
G_2	4	IS	Dormant	Control	Y1toY2	18
G_3	4	IS	Mixed	Litter	Y1toY2	-9
G_5	5	IS	Dormant	Control	Y1toY2	180
G_6	5	TC	Mixed	Control	Y1toY2	-11
G_7	5	IS	Mixed	Control	Y1toY2	1
G_8	5	BS	Dormant	Control	Y1toY2	28
G_9	6	IS	Dormant	HH	Y1toY2	-3
H_1	4	TC	Dormant	Control	Y1toY2	8
H_10	6	IS	Mixed	HH	Y1toY2	83
H_11	6	TC	NonDorm	Control	Y1toY2	56
H_12	6	IS	Dormant	Litter	Y1toY2	-3
H_2	4	IS	NonDorm	Litter	Y1toY2	-3
H_4	4	BS	Dormant	Litter	Y1toY2	-1
H_5	5	TC	Dormant	Control	Y1toY2	-4
H_6	5	IS	NonDorm	Litter	Y1toY2	0
H_7	5	IS	NonDorm	Control	Y1toY2	44
H_8	5	IS	Dormant	Litter	Y1toY2	25
H_9	6	BS	NonDorm	Control	Y1toY2	122
I_1	4	IS	NonDorm	HH	Y1toY2	-5
I_10	5	IS	Mixed	Litter	Y1toY2	53
I_11	6	IS	NonDorm	Litter	Y1toY2	7
I_12	6	IS	NonDorm	HH	Y1toY2	0
I_3	4	BS	Mixed	Control	Y1toY2	-9
I_4	4	IS	Dormant	Litter	Y1toY2	0
I_5	5	BS	NonDorm	Control	Y1toY2	-3
I_6	5	BS	Dormant	Litter	Y1toY2	-12
I_7	5	IS	NonDorm	HH	Y1toY2	32
I_8	5	BS	NonDorm	Litter	Y1toY2	-8
I_9	5	IS	Mixed	HH	Y1toY2	100
J_10	5	TC	NonDorm	Control	Y1toY2	70
J_11	8	IS	Dormant	HH	Y1toY2	-2
J_12	8	IS	NonDorm	Control	Y1toY2	2
J_2	4	IS	Dormant	Soil	Y1toY2	17
J_3	4	TC	Mixed	Control	Y1toY2	-10
J_4	4	IS	Mixed	Soil	Y1toY2	62
J_5	5	IS	Dormant	Soil	Y1toY2	104
J_6	5	IS	NonDorm	Soil	Y1toY2	-1
J_7	5	IS	Dormant	HH	Y1toY2	-7
J_8	5	BS	Mixed	Control	Y1toY2	9
J_9	5	IS	Mixed	Soil	Y1toY2	133
K_1	7	IS	NonDorm	Litter	Y1toY2	5
K_10	8	IS	NonDorm	Litter	Y1toY2	11
K_11	8	IS	Mixed	HH	Y1toY2	-23
K_12	8	IS	Dormant	Litter	Y1toY2	12
K_13	8	BS	Mixed	Control	Y1toY2	-1
K_2	7	TC	Dormant	Control	Y1toY2	67
K_3	7	TC	Mixed	Control	Y1toY2	54
K_4	7	IS	Dormant	Control	Y1toY2	256
K_5	7	IS	NonDorm	HH	Y1toY2	-11
K_6	7	IS	Mixed	Litter	Y1toY2	2
K_7	7	BS	Mixed	Control	Y1toY2	22
K_8	8	IS	NonDorm	HH	Y1toY2	4
K_9	8	BS	Dormant	Litter	Y1toY2	-7
L_1	7	IS	Dormant	HH	Y1toY2	207
L_10	8	IS	Dormant	Soil	Y1toY2	0
L_11	8	IS	Dormant	Control	Y1toY2	22
L_12	8	TC	Dormant	Control	Y1toY2	147
L_13	8	BS	Dormant	Control	Y1toY2	-6
L_2	7	IS	Dormant	Litter	Y1toY2	24
L_3	7	IS	Dormant	Soil	Y1toY2	0
L_4	7	TC	NonDorm	Control	Y1toY2	1
L_5	7	BS	Dormant	Litter	Y1toY2	-50
L_6	7	IS	Mixed	HH	Y1toY2	9
L_7	7	IS	Mixed	Soil	Y1toY2	101
L_8	8	BS	NonDorm	Control	Y1toY2	9
L_9	8	TC	NonDorm	Control	Y1toY2	14
M_1	7	IS	NonDorm	Soil	Y1toY2	60
M_10	8	BS	NonDorm	Litter	Y1toY2	1
M_11	8	IS	Mixed	Litter	Y1toY2	11
M_12	8	IS	NonDorm	Soil	Y1toY2	20
M_13	8	IS	Mixed	Soil	Y1toY2	-11
M_2	7	BS	Dormant	Control	Y1toY2	9
M_3	7	BS	NonDorm	Litter	Y1toY2	23
M_4	7	BS	NonDorm	Control	Y1toY2	10
M_5	7	IS	NonDorm	Control	Y1toY2	26
M_6	7	IS	Mixed	Control	Y1toY2	-25
M_8	8	TC	Mixed	Control	Y1toY2	42
M_9	8	IS	Mixed	Control	Y1toY2	-23
A_0	1	IS	Dormant	Litter	Y2toY3	55
A_1	1	BS	Dormant	Control	Y2toY3	-217
A_10	3	IS	NonDorm	Litter	Y2toY3	3
A_11	3	TC	Dormant	Control	Y2toY3	-30
A_12	3	BS	Mixed	Control	Y2toY3	-25
A_2	1	TC	Dormant	Control	Y2toY3	-3
A_3	1	IS	NonDorm	Litter	Y2toY3	4
A_4	1	IS	Mixed	HH	Y2toY3	-300
A_5	2	IS	Mixed	Litter	Y2toY3	29
A_6	2	BS	Dormant	Litter	Y2toY3	.
A_7	2	IS	Mixed	Soil	Y2toY3	3
A_8	2	TC	Mixed	Control	Y2toY3	-16
A_9	3	IS	Dormant	Soil	Y2toY3	16
B_0	1	IS	Dormant	Soil	Y2toY3	1
B_1	1	IS	Mixed	Control	Y2toY3	-51
B_10	3	TC	NonDorm	Control	Y2toY3	4
B_11	3	IS	NonDorm	Soil	Y2toY3	2
B_12	3	IS	Mixed	Soil	Y2toY3	11
B_13	3	IS	Dormant	Litter	Y2toY3	23
B_2	1	IS	NonDorm	HH	Y2toY3	14
B_3	1	BS	NonDorm	Control	Y2toY3	32
B_4	1	IS	Dormant	HH	Y2toY3	236
B_5	2	TC	Dormant	Control	Y2toY3	-45
B_6	2	IS	NonDorm	HH	Y2toY3	-18
B_7	2	IS	Mixed	Control	Y2toY3	126
B_8	2	BS	NonDorm	Control	Y2toY3	-45
B_9	3	TC	Mixed	Control	Y2toY3	-10
C_0	1	BS	NonDorm	Litter	Y2toY3	.
C_1	1	IS	Dormant	Control	Y2toY3	120
C_10	3	IS	Dormant	HH	Y2toY3	102
C_11	3	BS	NonDorm	Litter	Y2toY3	.
C_12	3	BS	Dormant	Control	Y2toY3	8
C_13	3	IS	Mixed	HH	Y2toY3	20
C_2	1	IS	NonDorm	Control	Y2toY3	8
C_3	1	IS	Mixed	Litter	Y2toY3	106
C_4	1	BS	Dormant	Litter	Y2toY3	.
C_5	2	TC	NonDorm	Control	Y2toY3	-32
C_6	2	BS	Dormant	Control	Y2toY3	-23
C_7	2	IS	Dormant	Control	Y2toY3	65
C_9	3	IS	Mixed	Control	Y2toY3	18
D_0	1	TC	Mixed	Control	Y2toY3	6
D_1	1	BS	Mixed	Control	Y2toY3	-71
D_10	3	IS	Mixed	Litter	Y2toY3	-34
D_11	3	BS	NonDorm	Control	Y2toY3	-11
D_12	3	BS	Dormant	Litter	Y2toY3	.
D_13	3	IS	Dormant	Control	Y2toY3	40
D_2	1	IS	NonDorm	Soil	Y2toY3	-6
D_3	1	IS	Mixed	Soil	Y2toY3	-7
D_4	1	TC	NonDorm	Control	Y2toY3	-17
D_5	2	IS	Mixed	HH	Y2toY3	-120
D_6	2	IS	Dormant	HH	Y2toY3	64
D_8	2	IS	NonDorm	Litter	Y2toY3	92
D_9	3	IS	NonDorm	Control	Y2toY3	9
E_1	4	IS	NonDorm	Soil	Y2toY3	0
E_10	6	BS	Mixed	Control	Y2toY3	-6
E_11	6	IS	Dormant	Control	Y2toY3	1
E_12	6	IS	Mixed	Control	Y2toY3	25
E_13	3	IS	NonDorm	HH	Y2toY3	-86
E_2	4	IS	Mixed	Control	Y2toY3	200
E_3	4	IS	NonDorm	Control	Y2toY3	3
E_4	4	BS	NonDorm	Litter	Y2toY3	.
E_5	2	BS	NonDorm	Litter	Y2toY3	.
E_7	2	IS	Dormant	Litter	Y2toY3	-9
E_8	2	IS	NonDorm	Control	Y2toY3	-11
E_9	6	IS	Dormant	Soil	Y2toY3	60
F_1	4	BS	Dormant	Control	Y2toY3	-35
F_10	6	BS	Dormant	Control	Y2toY3	-12
F_11	6	TC	Mixed	Control	Y2toY3	49
F_12	6	IS	NonDorm	Soil	Y2toY3	-64
F_13	6	BS	Dormant	Litter	Y2toY3	.
F_2	4	TC	NonDorm	Control	Y2toY3	-35
F_3	4	IS	Dormant	HH	Y2toY3	432
F_4	4	IS	Mixed	HH	Y2toY3	127
F_6	2	IS	Dormant	Soil	Y2toY3	-18
F_7	2	BS	Mixed	Control	Y2toY3	-151
F_8	2	IS	NonDorm	Soil	Y2toY3	-46
F_9	6	IS	NonDorm	Control	Y2toY3	5
G_1	4	BS	NonDorm	Control	Y2toY3	-11
G_10	6	IS	Mixed	Litter	Y2toY3	26
G_11	6	IS	Mixed	Soil	Y2toY3	-79
G_12	6	TC	Dormant	Control	Y2toY3	-54
G_13	6	BS	NonDorm	Litter	Y2toY3	.
G_2	4	IS	Dormant	Control	Y2toY3	312
G_3	4	IS	Mixed	Litter	Y2toY3	235
G_5	5	IS	Dormant	Control	Y2toY3	16
G_6	5	TC	Mixed	Control	Y2toY3	5
G_7	5	IS	Mixed	Control	Y2toY3	23
G_8	5	BS	Dormant	Control	Y2toY3	-25
G_9	6	IS	Dormant	HH	Y2toY3	145
H_1	4	TC	Dormant	Control	Y2toY3	16
H_10	6	IS	Mixed	HH	Y2toY3	135
H_11	6	TC	NonDorm	Control	Y2toY3	-56
H_12	6	IS	Dormant	Litter	Y2toY3	0
H_2	4	IS	NonDorm	Litter	Y2toY3	5
H_4	4	BS	Dormant	Litter	Y2toY3	.
H_5	5	TC	Dormant	Control	Y2toY3	31
H_6	5	IS	NonDorm	Litter	Y2toY3	-4
H_7	5	IS	NonDorm	Control	Y2toY3	-47
H_8	5	IS	Dormant	Litter	Y2toY3	-16
H_9	6	BS	NonDorm	Control	Y2toY3	-122
I_1	4	IS	NonDorm	HH	Y2toY3	8
I_10	5	IS	Mixed	Litter	Y2toY3	-56
I_11	6	IS	NonDorm	Litter	Y2toY3	-6
I_12	6	IS	NonDorm	HH	Y2toY3	-14
I_3	4	BS	Mixed	Control	Y2toY3	0
I_4	4	IS	Dormant	Litter	Y2toY3	57
I_5	5	BS	NonDorm	Control	Y2toY3	-4
I_6	5	BS	Dormant	Litter	Y2toY3	.
I_7	5	IS	NonDorm	HH	Y2toY3	-35
I_8	5	BS	NonDorm	Litter	Y2toY3	.
I_9	5	IS	Mixed	HH	Y2toY3	-116
J_10	5	TC	NonDorm	Control	Y2toY3	-68
J_11	8	IS	Dormant	HH	Y2toY3	39
J_12	8	IS	NonDorm	Control	Y2toY3	-4
J_2	4	IS	Dormant	Soil	Y2toY3	37
J_3	4	TC	Mixed	Control	Y2toY3	20
J_4	4	IS	Mixed	Soil	Y2toY3	4
J_5	5	IS	Dormant	Soil	Y2toY3	-42
J_6	5	IS	NonDorm	Soil	Y2toY3	-4
J_7	5	IS	Dormant	HH	Y2toY3	42
J_8	5	BS	Mixed	Control	Y2toY3	-10
J_9	5	IS	Mixed	Soil	Y2toY3	26
K_1	7	IS	NonDorm	Litter	Y2toY3	41
K_10	8	IS	NonDorm	Litter	Y2toY3	-11
K_11	8	IS	Mixed	HH	Y2toY3	-3
K_12	8	IS	Dormant	Litter	Y2toY3	-6
K_13	8	BS	Mixed	Control	Y2toY3	-2
K_2	7	TC	Dormant	Control	Y2toY3	-55
K_3	7	TC	Mixed	Control	Y2toY3	-54
K_4	7	IS	Dormant	Control	Y2toY3	-243
K_5	7	IS	NonDorm	HH	Y2toY3	-2
K_6	7	IS	Mixed	Litter	Y2toY3	-1
K_7	7	BS	Mixed	Control	Y2toY3	-26
K_8	8	IS	NonDorm	HH	Y2toY3	-2
K_9	8	BS	Dormant	Litter	Y2toY3	.
L_1	7	IS	Dormant	HH	Y2toY3	-208
L_10	8	IS	Dormant	Soil	Y2toY3	0
L_11	8	IS	Dormant	Control	Y2toY3	140
L_12	8	TC	Dormant	Control	Y2toY3	-145
L_13	8	BS	Dormant	Control	Y2toY3	26
L_2	7	IS	Dormant	Litter	Y2toY3	-21
L_3	7	IS	Dormant	Soil	Y2toY3	23
L_4	7	TC	NonDorm	Control	Y2toY3	-2
L_5	7	BS	Dormant	Litter	Y2toY3	.
L_6	7	IS	Mixed	HH	Y2toY3	80
L_7	7	IS	Mixed	Soil	Y2toY3	-84
L_8	8	BS	NonDorm	Control	Y2toY3	-10
L_9	8	TC	NonDorm	Control	Y2toY3	-15
M_1	7	IS	NonDorm	Soil	Y2toY3	-58
M_10	8	BS	NonDorm	Litter	Y2toY3	.
M_11	8	IS	Mixed	Litter	Y2toY3	44
M_12	8	IS	NonDorm	Soil	Y2toY3	-26
M_13	8	IS	Mixed	Soil	Y2toY3	-14
M_2	7	BS	Dormant	Control	Y2toY3	-11
M_3	7	BS	NonDorm	Litter	Y2toY3	.
M_4	7	BS	NonDorm	Control	Y2toY3	-10
M_5	7	IS	NonDorm	Control	Y2toY3	-26
M_6	7	IS	Mixed	Control	Y2toY3	20
M_8	8	TC	Mixed	Control	Y2toY3	123
M_9	8	IS	Mixed	Control	Y2toY3	148
;
proc univariate plot normal;
	var flucts sflucts lflucts llflucts; 

proc sort;
	by dorm;
proc means n mean stderr var;
	var flucts;
	by dorm;
/*full model*/
proc mixed;
	class block dorm RIL timeperiod;
	model flucts = dorm RIL timeperiod dorm*RIL dorm*timeperiod RIL*timeperiod dorm*RIL*timeperiod;
	random block;
	lsmeans dorm dorm*RIL dorm*timeperiod RIL*timeperiod dorm*RIL*timeperiod / cl adjust=tukey; 

/*submodels*
proc mixed;
	class block dorm timeperiod;
	model flucts = dorm timeperiod dorm*timeperiod;
	random block;
	lsmeans dorm timeperiod dorm*timeperiod / cl adjust=tukey;
run;
quit;


*/
data minsdlsfluctsenvt;
input popid $ block $ RIL $ dorm $ envt $ timeperiod $ flucts;
sflucts = sqrt(flucts + 438);
lflucts = log(flucts + 438);
llflucts = log10(flucts + 438);
if RIL NE 'IS' then delete;
/*if envt NE 'Litter' then delete;
if dorm = 'Dormant' then delete; *
if dorm NE 'NonDorm' then delete; */
title 'minsdls Population Size Fluctuations - IS Only';
datalines;
A_0	1	IS	Dormant	Litter	Y1toY2	-42
A_1	1	BS	Dormant	Control	Y1toY2	257
A_10	3	IS	NonDorm	Litter	Y1toY2	-4
A_11	3	TC	Dormant	Control	Y1toY2	43
A_12	3	BS	Mixed	Control	Y1toY2	27
A_2	1	TC	Dormant	Control	Y1toY2	-8
A_3	1	IS	NonDorm	Litter	Y1toY2	-237
A_4	1	IS	Mixed	HH	Y1toY2	402
A_5	2	IS	Mixed	Litter	Y1toY2	-20
A_6	2	BS	Dormant	Litter	Y1toY2	-4
A_7	2	IS	Mixed	Soil	Y1toY2	-52
A_8	2	TC	Mixed	Control	Y1toY2	10
A_9	3	IS	Dormant	Soil	Y1toY2	-35
B_0	1	IS	Dormant	Soil	Y1toY2	-10
B_1	1	IS	Mixed	Control	Y1toY2	46
B_10	3	TC	NonDorm	Control	Y1toY2	-1
B_11	3	IS	NonDorm	Soil	Y1toY2	-21
B_12	3	IS	Mixed	Soil	Y1toY2	-28
B_13	3	IS	Dormant	Litter	Y1toY2	0
B_2	1	IS	NonDorm	HH	Y1toY2	-438
B_3	1	BS	NonDorm	Control	Y1toY2	5
B_4	1	IS	Dormant	HH	Y1toY2	-19
B_5	2	TC	Dormant	Control	Y1toY2	36
B_6	2	IS	NonDorm	HH	Y1toY2	191
B_7	2	IS	Mixed	Control	Y1toY2	41
B_8	2	BS	NonDorm	Control	Y1toY2	40
B_9	3	TC	Mixed	Control	Y1toY2	4
C_0	1	BS	NonDorm	Litter	Y1toY2	-2
C_1	1	IS	Dormant	Control	Y1toY2	-3
C_10	3	IS	Dormant	HH	Y1toY2	31
C_11	3	BS	NonDorm	Litter	Y1toY2	2
C_12	3	BS	Dormant	Control	Y1toY2	2
C_13	3	IS	Mixed	HH	Y1toY2	-3
C_2	1	IS	NonDorm	Control	Y1toY2	31
C_3	1	IS	Mixed	Litter	Y1toY2	-41
C_4	1	BS	Dormant	Litter	Y1toY2	-8
C_5	2	TC	NonDorm	Control	Y1toY2	38
C_6	2	BS	Dormant	Control	Y1toY2	19
C_7	2	IS	Dormant	Control	Y1toY2	1
C_9	3	IS	Mixed	Control	Y1toY2	1
D_0	1	TC	Mixed	Control	Y1toY2	-13
D_1	1	BS	Mixed	Control	Y1toY2	192
D_10	3	IS	Mixed	Litter	Y1toY2	33
D_11	3	BS	NonDorm	Control	Y1toY2	7
D_12	3	BS	Dormant	Litter	Y1toY2	0
D_13	3	IS	Dormant	Control	Y1toY2	-3
D_2	1	IS	NonDorm	Soil	Y1toY2	-43
D_3	1	IS	Mixed	Soil	Y1toY2	-19
D_4	1	TC	NonDorm	Control	Y1toY2	11
D_5	2	IS	Mixed	HH	Y1toY2	190
D_6	2	IS	Dormant	HH	Y1toY2	74
D_8	2	IS	NonDorm	Litter	Y1toY2	46
D_9	3	IS	NonDorm	Control	Y1toY2	-26
E_1	4	IS	NonDorm	Soil	Y1toY2	-32
E_10	6	BS	Mixed	Control	Y1toY2	16
E_11	6	IS	Dormant	Control	Y1toY2	1
E_12	6	IS	Mixed	Control	Y1toY2	4
E_13	3	IS	NonDorm	HH	Y1toY2	74
E_2	4	IS	Mixed	Control	Y1toY2	16
E_3	4	IS	NonDorm	Control	Y1toY2	40
E_4	4	BS	NonDorm	Litter	Y1toY2	5
E_5	2	BS	NonDorm	Litter	Y1toY2	24
E_7	2	IS	Dormant	Litter	Y1toY2	7
E_8	2	IS	NonDorm	Control	Y1toY2	7
E_9	6	IS	Dormant	Soil	Y1toY2	31
F_1	4	BS	Dormant	Control	Y1toY2	35
F_10	6	BS	Dormant	Control	Y1toY2	4
F_11	6	TC	Mixed	Control	Y1toY2	1
F_12	6	IS	NonDorm	Soil	Y1toY2	55
F_13	6	BS	Dormant	Litter	Y1toY2	0
F_2	4	TC	NonDorm	Control	Y1toY2	28
F_3	4	IS	Dormant	HH	Y1toY2	143
F_4	4	IS	Mixed	HH	Y1toY2	243
F_6	2	IS	Dormant	Soil	Y1toY2	26
F_7	2	BS	Mixed	Control	Y1toY2	144
F_8	2	IS	NonDorm	Soil	Y1toY2	36
F_9	6	IS	NonDorm	Control	Y1toY2	-3
G_1	4	BS	NonDorm	Control	Y1toY2	4
G_10	6	IS	Mixed	Litter	Y1toY2	-10
G_11	6	IS	Mixed	Soil	Y1toY2	81
G_12	6	TC	Dormant	Control	Y1toY2	72
G_13	6	BS	NonDorm	Litter	Y1toY2	0
G_2	4	IS	Dormant	Control	Y1toY2	18
G_3	4	IS	Mixed	Litter	Y1toY2	-9
G_5	5	IS	Dormant	Control	Y1toY2	180
G_6	5	TC	Mixed	Control	Y1toY2	-11
G_7	5	IS	Mixed	Control	Y1toY2	1
G_8	5	BS	Dormant	Control	Y1toY2	28
G_9	6	IS	Dormant	HH	Y1toY2	-3
H_1	4	TC	Dormant	Control	Y1toY2	8
H_10	6	IS	Mixed	HH	Y1toY2	83
H_11	6	TC	NonDorm	Control	Y1toY2	56
H_12	6	IS	Dormant	Litter	Y1toY2	-3
H_2	4	IS	NonDorm	Litter	Y1toY2	-3
H_4	4	BS	Dormant	Litter	Y1toY2	-1
H_5	5	TC	Dormant	Control	Y1toY2	-4
H_6	5	IS	NonDorm	Litter	Y1toY2	0
H_7	5	IS	NonDorm	Control	Y1toY2	44
H_8	5	IS	Dormant	Litter	Y1toY2	25
H_9	6	BS	NonDorm	Control	Y1toY2	122
I_1	4	IS	NonDorm	HH	Y1toY2	-5
I_10	5	IS	Mixed	Litter	Y1toY2	53
I_11	6	IS	NonDorm	Litter	Y1toY2	7
I_12	6	IS	NonDorm	HH	Y1toY2	0
I_3	4	BS	Mixed	Control	Y1toY2	-9
I_4	4	IS	Dormant	Litter	Y1toY2	0
I_5	5	BS	NonDorm	Control	Y1toY2	-3
I_6	5	BS	Dormant	Litter	Y1toY2	-12
I_7	5	IS	NonDorm	HH	Y1toY2	32
I_8	5	BS	NonDorm	Litter	Y1toY2	-8
I_9	5	IS	Mixed	HH	Y1toY2	100
J_10	5	TC	NonDorm	Control	Y1toY2	70
J_11	8	IS	Dormant	HH	Y1toY2	-2
J_12	8	IS	NonDorm	Control	Y1toY2	2
J_2	4	IS	Dormant	Soil	Y1toY2	17
J_3	4	TC	Mixed	Control	Y1toY2	-10
J_4	4	IS	Mixed	Soil	Y1toY2	62
J_5	5	IS	Dormant	Soil	Y1toY2	104
J_6	5	IS	NonDorm	Soil	Y1toY2	-1
J_7	5	IS	Dormant	HH	Y1toY2	-7
J_8	5	BS	Mixed	Control	Y1toY2	9
J_9	5	IS	Mixed	Soil	Y1toY2	133
K_1	7	IS	NonDorm	Litter	Y1toY2	5
K_10	8	IS	NonDorm	Litter	Y1toY2	11
K_11	8	IS	Mixed	HH	Y1toY2	-23
K_12	8	IS	Dormant	Litter	Y1toY2	12
K_13	8	BS	Mixed	Control	Y1toY2	-1
K_2	7	TC	Dormant	Control	Y1toY2	67
K_3	7	TC	Mixed	Control	Y1toY2	54
K_4	7	IS	Dormant	Control	Y1toY2	256
K_5	7	IS	NonDorm	HH	Y1toY2	-11
K_6	7	IS	Mixed	Litter	Y1toY2	2
K_7	7	BS	Mixed	Control	Y1toY2	22
K_8	8	IS	NonDorm	HH	Y1toY2	4
K_9	8	BS	Dormant	Litter	Y1toY2	-7
L_1	7	IS	Dormant	HH	Y1toY2	207
L_10	8	IS	Dormant	Soil	Y1toY2	0
L_11	8	IS	Dormant	Control	Y1toY2	22
L_12	8	TC	Dormant	Control	Y1toY2	147
L_13	8	BS	Dormant	Control	Y1toY2	-6
L_2	7	IS	Dormant	Litter	Y1toY2	24
L_3	7	IS	Dormant	Soil	Y1toY2	0
L_4	7	TC	NonDorm	Control	Y1toY2	1
L_5	7	BS	Dormant	Litter	Y1toY2	-50
L_6	7	IS	Mixed	HH	Y1toY2	9
L_7	7	IS	Mixed	Soil	Y1toY2	101
L_8	8	BS	NonDorm	Control	Y1toY2	9
L_9	8	TC	NonDorm	Control	Y1toY2	14
M_1	7	IS	NonDorm	Soil	Y1toY2	60
M_10	8	BS	NonDorm	Litter	Y1toY2	1
M_11	8	IS	Mixed	Litter	Y1toY2	11
M_12	8	IS	NonDorm	Soil	Y1toY2	20
M_13	8	IS	Mixed	Soil	Y1toY2	-11
M_2	7	BS	Dormant	Control	Y1toY2	9
M_3	7	BS	NonDorm	Litter	Y1toY2	23
M_4	7	BS	NonDorm	Control	Y1toY2	10
M_5	7	IS	NonDorm	Control	Y1toY2	26
M_6	7	IS	Mixed	Control	Y1toY2	-25
M_8	8	TC	Mixed	Control	Y1toY2	42
M_9	8	IS	Mixed	Control	Y1toY2	-23
A_0	1	IS	Dormant	Litter	Y2toY3	55
A_1	1	BS	Dormant	Control	Y2toY3	-217
A_10	3	IS	NonDorm	Litter	Y2toY3	3
A_11	3	TC	Dormant	Control	Y2toY3	-30
A_12	3	BS	Mixed	Control	Y2toY3	-25
A_2	1	TC	Dormant	Control	Y2toY3	-3
A_3	1	IS	NonDorm	Litter	Y2toY3	4
A_4	1	IS	Mixed	HH	Y2toY3	-300
A_5	2	IS	Mixed	Litter	Y2toY3	29
A_6	2	BS	Dormant	Litter	Y2toY3	.
A_7	2	IS	Mixed	Soil	Y2toY3	3
A_8	2	TC	Mixed	Control	Y2toY3	-16
A_9	3	IS	Dormant	Soil	Y2toY3	16
B_0	1	IS	Dormant	Soil	Y2toY3	1
B_1	1	IS	Mixed	Control	Y2toY3	-51
B_10	3	TC	NonDorm	Control	Y2toY3	4
B_11	3	IS	NonDorm	Soil	Y2toY3	2
B_12	3	IS	Mixed	Soil	Y2toY3	11
B_13	3	IS	Dormant	Litter	Y2toY3	23
B_2	1	IS	NonDorm	HH	Y2toY3	14
B_3	1	BS	NonDorm	Control	Y2toY3	32
B_4	1	IS	Dormant	HH	Y2toY3	236
B_5	2	TC	Dormant	Control	Y2toY3	-45
B_6	2	IS	NonDorm	HH	Y2toY3	-18
B_7	2	IS	Mixed	Control	Y2toY3	126
B_8	2	BS	NonDorm	Control	Y2toY3	-45
B_9	3	TC	Mixed	Control	Y2toY3	-10
C_0	1	BS	NonDorm	Litter	Y2toY3	.
C_1	1	IS	Dormant	Control	Y2toY3	120
C_10	3	IS	Dormant	HH	Y2toY3	102
C_11	3	BS	NonDorm	Litter	Y2toY3	.
C_12	3	BS	Dormant	Control	Y2toY3	8
C_13	3	IS	Mixed	HH	Y2toY3	20
C_2	1	IS	NonDorm	Control	Y2toY3	8
C_3	1	IS	Mixed	Litter	Y2toY3	106
C_4	1	BS	Dormant	Litter	Y2toY3	.
C_5	2	TC	NonDorm	Control	Y2toY3	-32
C_6	2	BS	Dormant	Control	Y2toY3	-23
C_7	2	IS	Dormant	Control	Y2toY3	65
C_9	3	IS	Mixed	Control	Y2toY3	18
D_0	1	TC	Mixed	Control	Y2toY3	6
D_1	1	BS	Mixed	Control	Y2toY3	-71
D_10	3	IS	Mixed	Litter	Y2toY3	-34
D_11	3	BS	NonDorm	Control	Y2toY3	-11
D_12	3	BS	Dormant	Litter	Y2toY3	.
D_13	3	IS	Dormant	Control	Y2toY3	40
D_2	1	IS	NonDorm	Soil	Y2toY3	-6
D_3	1	IS	Mixed	Soil	Y2toY3	-7
D_4	1	TC	NonDorm	Control	Y2toY3	-17
D_5	2	IS	Mixed	HH	Y2toY3	-120
D_6	2	IS	Dormant	HH	Y2toY3	64
D_8	2	IS	NonDorm	Litter	Y2toY3	92
D_9	3	IS	NonDorm	Control	Y2toY3	9
E_1	4	IS	NonDorm	Soil	Y2toY3	0
E_10	6	BS	Mixed	Control	Y2toY3	-6
E_11	6	IS	Dormant	Control	Y2toY3	1
E_12	6	IS	Mixed	Control	Y2toY3	25
E_13	3	IS	NonDorm	HH	Y2toY3	-86
E_2	4	IS	Mixed	Control	Y2toY3	200
E_3	4	IS	NonDorm	Control	Y2toY3	3
E_4	4	BS	NonDorm	Litter	Y2toY3	.
E_5	2	BS	NonDorm	Litter	Y2toY3	.
E_7	2	IS	Dormant	Litter	Y2toY3	-9
E_8	2	IS	NonDorm	Control	Y2toY3	-11
E_9	6	IS	Dormant	Soil	Y2toY3	60
F_1	4	BS	Dormant	Control	Y2toY3	-35
F_10	6	BS	Dormant	Control	Y2toY3	-12
F_11	6	TC	Mixed	Control	Y2toY3	49
F_12	6	IS	NonDorm	Soil	Y2toY3	-64
F_13	6	BS	Dormant	Litter	Y2toY3	.
F_2	4	TC	NonDorm	Control	Y2toY3	-35
F_3	4	IS	Dormant	HH	Y2toY3	432
F_4	4	IS	Mixed	HH	Y2toY3	127
F_6	2	IS	Dormant	Soil	Y2toY3	-18
F_7	2	BS	Mixed	Control	Y2toY3	-151
F_8	2	IS	NonDorm	Soil	Y2toY3	-46
F_9	6	IS	NonDorm	Control	Y2toY3	5
G_1	4	BS	NonDorm	Control	Y2toY3	-11
G_10	6	IS	Mixed	Litter	Y2toY3	26
G_11	6	IS	Mixed	Soil	Y2toY3	-79
G_12	6	TC	Dormant	Control	Y2toY3	-54
G_13	6	BS	NonDorm	Litter	Y2toY3	.
G_2	4	IS	Dormant	Control	Y2toY3	312
G_3	4	IS	Mixed	Litter	Y2toY3	235
G_5	5	IS	Dormant	Control	Y2toY3	16
G_6	5	TC	Mixed	Control	Y2toY3	5
G_7	5	IS	Mixed	Control	Y2toY3	23
G_8	5	BS	Dormant	Control	Y2toY3	-25
G_9	6	IS	Dormant	HH	Y2toY3	145
H_1	4	TC	Dormant	Control	Y2toY3	16
H_10	6	IS	Mixed	HH	Y2toY3	135
H_11	6	TC	NonDorm	Control	Y2toY3	-56
H_12	6	IS	Dormant	Litter	Y2toY3	0
H_2	4	IS	NonDorm	Litter	Y2toY3	5
H_4	4	BS	Dormant	Litter	Y2toY3	.
H_5	5	TC	Dormant	Control	Y2toY3	31
H_6	5	IS	NonDorm	Litter	Y2toY3	-4
H_7	5	IS	NonDorm	Control	Y2toY3	-47
H_8	5	IS	Dormant	Litter	Y2toY3	-16
H_9	6	BS	NonDorm	Control	Y2toY3	-122
I_1	4	IS	NonDorm	HH	Y2toY3	8
I_10	5	IS	Mixed	Litter	Y2toY3	-56
I_11	6	IS	NonDorm	Litter	Y2toY3	-6
I_12	6	IS	NonDorm	HH	Y2toY3	-14
I_3	4	BS	Mixed	Control	Y2toY3	0
I_4	4	IS	Dormant	Litter	Y2toY3	57
I_5	5	BS	NonDorm	Control	Y2toY3	-4
I_6	5	BS	Dormant	Litter	Y2toY3	.
I_7	5	IS	NonDorm	HH	Y2toY3	-35
I_8	5	BS	NonDorm	Litter	Y2toY3	.
I_9	5	IS	Mixed	HH	Y2toY3	-116
J_10	5	TC	NonDorm	Control	Y2toY3	-68
J_11	8	IS	Dormant	HH	Y2toY3	39
J_12	8	IS	NonDorm	Control	Y2toY3	-4
J_2	4	IS	Dormant	Soil	Y2toY3	37
J_3	4	TC	Mixed	Control	Y2toY3	20
J_4	4	IS	Mixed	Soil	Y2toY3	4
J_5	5	IS	Dormant	Soil	Y2toY3	-42
J_6	5	IS	NonDorm	Soil	Y2toY3	-4
J_7	5	IS	Dormant	HH	Y2toY3	42
J_8	5	BS	Mixed	Control	Y2toY3	-10
J_9	5	IS	Mixed	Soil	Y2toY3	26
K_1	7	IS	NonDorm	Litter	Y2toY3	41
K_10	8	IS	NonDorm	Litter	Y2toY3	-11
K_11	8	IS	Mixed	HH	Y2toY3	-3
K_12	8	IS	Dormant	Litter	Y2toY3	-6
K_13	8	BS	Mixed	Control	Y2toY3	-2
K_2	7	TC	Dormant	Control	Y2toY3	-55
K_3	7	TC	Mixed	Control	Y2toY3	-54
K_4	7	IS	Dormant	Control	Y2toY3	-243
K_5	7	IS	NonDorm	HH	Y2toY3	-2
K_6	7	IS	Mixed	Litter	Y2toY3	-1
K_7	7	BS	Mixed	Control	Y2toY3	-26
K_8	8	IS	NonDorm	HH	Y2toY3	-2
K_9	8	BS	Dormant	Litter	Y2toY3	.
L_1	7	IS	Dormant	HH	Y2toY3	-208
L_10	8	IS	Dormant	Soil	Y2toY3	0
L_11	8	IS	Dormant	Control	Y2toY3	140
L_12	8	TC	Dormant	Control	Y2toY3	-145
L_13	8	BS	Dormant	Control	Y2toY3	26
L_2	7	IS	Dormant	Litter	Y2toY3	-21
L_3	7	IS	Dormant	Soil	Y2toY3	23
L_4	7	TC	NonDorm	Control	Y2toY3	-2
L_5	7	BS	Dormant	Litter	Y2toY3	.
L_6	7	IS	Mixed	HH	Y2toY3	80
L_7	7	IS	Mixed	Soil	Y2toY3	-84
L_8	8	BS	NonDorm	Control	Y2toY3	-10
L_9	8	TC	NonDorm	Control	Y2toY3	-15
M_1	7	IS	NonDorm	Soil	Y2toY3	-58
M_10	8	BS	NonDorm	Litter	Y2toY3	.
M_11	8	IS	Mixed	Litter	Y2toY3	44
M_12	8	IS	NonDorm	Soil	Y2toY3	-26
M_13	8	IS	Mixed	Soil	Y2toY3	-14
M_2	7	BS	Dormant	Control	Y2toY3	-11
M_3	7	BS	NonDorm	Litter	Y2toY3	.
M_4	7	BS	NonDorm	Control	Y2toY3	-10
M_5	7	IS	NonDorm	Control	Y2toY3	-26
M_6	7	IS	Mixed	Control	Y2toY3	20
M_8	8	TC	Mixed	Control	Y2toY3	123
M_9	8	IS	Mixed	Control	Y2toY3	148
;
proc univariate plot normal;
	var flucts sflucts lflucts llflucts; 

proc sort;
	by dorm;
proc means n mean stderr var;
	var flucts;
	by dorm;
/*full models
proc mixed;
	class block dorm envt timeperiod;
	model flucts = dorm envt timeperiod dorm*envt dorm*timeperiod envt*timeperiod dorm*envt*timeperiod;
	random block;
	lsmeans dorm dorm*envt dorm*timeperiod envt*timeperiod dorm*envt*timeperiod / cl adjust=tukey; 
/*submodels*
proc mixed;
	class block dorm timeperiod;
	model flucts = dorm timeperiod dorm*timeperiod;
	random block;
	lsmeans dorm timeperiod dorm*timeperiod / cl adjust=tukey;
*
proc mixed;
	class block envt timeperiod;
	model flucts = envt timeperiod envt*timeperiod;
	random block;
	lsmeans envt envt*timeperiod / cl adjust=tukey; 
*/
run;
quit;


