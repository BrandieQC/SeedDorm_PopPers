/*
data multtestmingerm;
input test $ Raw_P;
datalines;
dndBSt1	0.0225
dmBSt1	0.0188
ndmBSt1	0.2896
;
proc multtest inpvalues=multtestmingerm holm hoc fdr;
run;
quit;
data multtestmingerm;
input test $ Raw_P;
datalines;
dndTCt1	0.2829
dmTCt1	0.0056
ndmTCt1	0.0972
;
proc multtest inpvalues=multtestmingerm holm hoc fdr;
run;
quit;
/*
data quantsurvtorose_ctrl;
input popid $ block $ newblock $ RIL $ dorm $ envt $ year $ rosen minsdln surv;
if envt NE 'Control' then delete;
/*if year = '2' then delete; /*causes quasi-complete sep issues without firt option*/
/* for ind tests *
if RIL NE 'TC' then delete;
if dorm = 'Dormant' then delete;
if year NE '1' then delete;
title 'Log Reg for Surv to Rose from MinSdls - Control Only';
datalines;
A_0	1	1	IS	Dormant	Litter	1	54	60	0.9
A_0	1	1	IS	Dormant	Litter	2	0	18	0
A_1	1	1	BS	Dormant	Control	1	18	34	0.529411765
A_1	1	1	BS	Dormant	Control	2	0	291	0
A_2	1	1	TC	Dormant	Control	1	1	12	0.083333333
A_2	1	1	TC	Dormant	Control	2	0	4	0
A_3	1	1	IS	NonDorm	Litter	1	157	243	0.646090535
A_3	1	1	IS	NonDorm	Litter	2	0	6	0
A_4	1	1	IS	Mixed	HH	1	105	147	0.714285714
A_4	1	1	IS	Mixed	HH	2	45	549	0.081967213
A_5	2	1	IS	Mixed	Litter	1	4	21	0.19047619
A_5	2	1	IS	Mixed	Litter	2	1	1	1
A_6	2	1	BS	Dormant	Litter	1	0	4	0
A_7	2	1	IS	Mixed	Soil	1	38	52	0.730769231
A_8	2	1	TC	Mixed	Control	1	6	14	0.428571429
A_8	2	1	TC	Mixed	Control	2	0	24	0
A_9	3	1	IS	Dormant	Soil	1	12	38	0.315789474
A_9	3	1	IS	Dormant	Soil	2	1	3	0.333333333
A_10	3	1	IS	NonDorm	Litter	1	1	4	0.25
A_11	3	1	TC	Dormant	Control	2	0	43	0
A_12	3	1	BS	Mixed	Control	1	0	4	0
A_12	3	1	BS	Mixed	Control	2	0	31	0
B_0	1	1	IS	Dormant	Soil	1	9	10	0.9
B_1	1	1	IS	Mixed	Control	1	13	32	0.40625
B_1	1	1	IS	Mixed	Control	2	0	78	0
B_2	1	1	IS	NonDorm	HH	1	262	532	0.492481203
B_2	1	1	IS	NonDorm	HH	2	2	94	0.021276596
B_3	1	1	BS	NonDorm	Control	1	0	2	0
B_3	1	1	BS	NonDorm	Control	2	0	7	0
B_4	1	1	IS	Dormant	HH	1	43	56	0.767857143
B_4	1	1	IS	Dormant	HH	2	8	37	0.216216216
B_5	2	1	TC	Dormant	Control	1	0	9	0
B_5	2	1	TC	Dormant	Control	2	0	45	0
B_6	2	1	IS	NonDorm	HH	1	9	20	0.45
B_6	2	1	IS	NonDorm	HH	2	4	211	0.018957346
B_7	2	1	IS	Mixed	Control	1	11	12	0.916666667
B_7	2	1	IS	Mixed	Control	2	0	53	0
B_8	2	1	BS	NonDorm	Control	1	1	5	0.2
B_8	2	1	BS	NonDorm	Control	2	0	45	0
B_9	3	1	TC	Mixed	Control	1	0	9	0
B_9	3	1	TC	Mixed	Control	2	0	13	0
B_10	3	1	TC	NonDorm	Control	1	0	1	0
B_11	3	1	IS	NonDorm	Soil	1	22	23	0.956521739
B_11	3	1	IS	NonDorm	Soil	2	0	2	0
B_12	3	1	IS	Mixed	Soil	1	26	29	0.896551724
B_12	3	1	IS	Mixed	Soil	2	0	1	0
C_0	1	1	BS	NonDorm	Litter	1	2	2	1
C_1	1	1	IS	Dormant	Control	1	7	20	0.35
C_1	1	1	IS	Dormant	Control	2	0	17	0
C_2	1	1	IS	NonDorm	Control	1	1	1	1
C_2	1	1	IS	NonDorm	Control	2	0	32	0
C_3	1	1	IS	Mixed	Litter	1	11	41	0.268292683
C_4	1	1	BS	Dormant	Litter	1	5	8	0.625
C_5	2	1	TC	NonDorm	Control	2	0	38	0
C_6	2	1	BS	Dormant	Control	1	1	5	0.2
C_6	2	1	BS	Dormant	Control	2	0	24	0
C_7	2	1	IS	Dormant	Control	1	0	8	0
C_7	2	1	IS	Dormant	Control	2	3	9	0.333333333
C_9	3	1	IS	Mixed	Control	1	0	1	0
C_9	3	1	IS	Mixed	Control	2	0	2	0
C_10	3	1	IS	Dormant	HH	1	1	19	0.052631579
C_10	3	1	IS	Dormant	HH	2	1	50	0.02
C_11	3	1	BS	NonDorm	Litter	2	0	2	0
C_12	3	1	BS	Dormant	Control	1	0	1	0
C_12	3	1	BS	Dormant	Control	2	0	3	0
C_13	3	1	IS	Mixed	HH	1	1	3	0.333333333
D_0	1	1	TC	Mixed	Control	1	35	46	0.760869565
D_0	1	1	TC	Mixed	Control	2	0	33	0
D_1	1	1	BS	Mixed	Control	1	0	13	0
D_1	1	1	BS	Mixed	Control	2	0	205	0
D_2	1	1	IS	NonDorm	Soil	1	27	51	0.529411765
D_2	1	1	IS	NonDorm	Soil	2	4	8	0.5
D_3	1	1	IS	Mixed	Soil	1	25	26	0.961538462
D_3	1	1	IS	Mixed	Soil	2	2	7	0.285714286
D_4	1	1	TC	NonDorm	Control	1	0	6	0
D_4	1	1	TC	NonDorm	Control	2	0	17	0
D_5	2	1	IS	Mixed	HH	1	24	49	0.489795918
D_5	2	1	IS	Mixed	HH	2	99	239	0.414225941
D_6	2	1	IS	Dormant	HH	1	23	29	0.793103448
D_6	2	1	IS	Dormant	HH	2	9	103	0.087378641
D_8	2	1	IS	NonDorm	Litter	1	2	11	0.181818182
D_8	2	1	IS	NonDorm	Litter	2	4	57	0.070175439
D_9	3	1	IS	NonDorm	Control	1	1	28	0.035714286
D_9	3	1	IS	NonDorm	Control	2	0	2	0
D_10	3	1	IS	Mixed	Litter	1	0	8	0
D_10	3	1	IS	Mixed	Litter	2	0	41	0
D_11	3	1	BS	NonDorm	Control	1	0	4	0
D_11	3	1	BS	NonDorm	Control	2	0	11	0
D_13	3	1	IS	Dormant	Control	1	4	5	0.8
D_13	3	1	IS	Dormant	Control	2	0	2	0
E_1	4	1	IS	NonDorm	Soil	1	28	35	0.8
E_1	4	1	IS	NonDorm	Soil	2	0	3	0
E_2	4	1	IS	Mixed	Control	1	13	38	0.342105263
E_2	4	1	IS	Mixed	Control	2	0	54	0
E_3	4	1	IS	NonDorm	Control	1	3	21	0.142857143
E_3	4	1	IS	NonDorm	Control	2	0	61	0
E_4	4	1	BS	NonDorm	Litter	1	0	8	0
E_4	4	1	BS	NonDorm	Litter	2	0	13	0
E_5	2	1	BS	NonDorm	Litter	1	0	1	0
E_5	2	1	BS	NonDorm	Litter	2	0	25	0
E_7	2	1	IS	Dormant	Litter	1	1	16	0.0625
E_7	2	1	IS	Dormant	Litter	2	0	23	0
E_8	2	1	IS	NonDorm	Control	1	0	4	0
E_8	2	1	IS	NonDorm	Control	2	0	11	0
E_9	6	1	IS	Dormant	Soil	1	8	8	1
E_9	6	1	IS	Dormant	Soil	2	8	39	0.205128205
E_10	6	1	BS	Mixed	Control	2	0	16	0
E_11	6	1	IS	Dormant	Control	2	0	1	0
E_12	6	1	IS	Mixed	Control	1	0	3	0
E_12	6	1	IS	Mixed	Control	2	0	7	0
E_13	3	1	IS	NonDorm	HH	1	2	15	0.133333333
E_13	3	1	IS	NonDorm	HH	2	0	89	0
F_1	4	1	BS	Dormant	Control	1	4	7	0.571428571
F_1	4	1	BS	Dormant	Control	2	0	42	0
F_2	4	1	TC	NonDorm	Control	1	3	8	0.375
F_2	4	1	TC	NonDorm	Control	2	0	36	0
F_3	4	1	IS	Dormant	HH	1	38	63	0.603174603
F_3	4	1	IS	Dormant	HH	2	0	206	0
F_4	4	1	IS	Mixed	HH	1	27	37	0.72972973
F_4	4	1	IS	Mixed	HH	2	7	280	0.025
F_6	2	1	IS	Dormant	Soil	1	15	28	0.535714286
F_6	2	1	IS	Dormant	Soil	2	15	54	0.277777778
F_7	2	1	BS	Mixed	Control	1	0	7	0
F_7	2	1	BS	Mixed	Control	2	0	151	0
F_8	2	1	IS	NonDorm	Soil	1	16	20	0.8
F_8	2	1	IS	NonDorm	Soil	2	0	56	0
F_9	6	1	IS	NonDorm	Control	1	1	3	0.333333333
F_10	6	1	BS	Dormant	Control	1	2	8	0.25
F_10	6	1	BS	Dormant	Control	2	0	12	0
F_11	6	1	TC	Mixed	Control	2	0	1	0
F_12	6	1	IS	NonDorm	Soil	1	7	12	0.583333333
F_12	6	1	IS	NonDorm	Soil	2	0	67	0
G_1	4	1	BS	NonDorm	Control	1	0	7	0
G_1	4	1	BS	NonDorm	Control	2	0	11	0
G_2	4	1	IS	Dormant	Control	1	1	5	0.2
G_2	4	1	IS	Dormant	Control	2	0	23	0
G_3	4	1	IS	Mixed	Litter	1	9	18	0.5
G_3	4	1	IS	Mixed	Litter	2	0	9	0
G_5	5	1	IS	Dormant	Control	1	0	6	0
G_5	5	1	IS	Dormant	Control	2	0	186	0
G_6	5	1	TC	Mixed	Control	1	0	22	0
G_6	5	1	TC	Mixed	Control	2	0	11	0
G_7	5	1	IS	Mixed	Control	1	1	4	0.25
G_7	5	1	IS	Mixed	Control	2	0	5	0
G_8	5	1	BS	Dormant	Control	2	0	28	0
G_9	6	1	IS	Dormant	HH	1	2	19	0.105263158
G_9	6	1	IS	Dormant	HH	2	0	16	0
G_10	6	1	IS	Mixed	Litter	1	1	10	0.1
G_11	6	1	IS	Mixed	Soil	1	6	10	0.6
G_11	6	1	IS	Mixed	Soil	2	60	91	0.659340659
G_12	6	1	TC	Dormant	Control	1	0	3	0
G_12	6	1	TC	Dormant	Control	2	0	75	0
H_1	4	2	TC	Dormant	Control	1	0	1	0
H_1	4	2	TC	Dormant	Control	2	0	9	0
H_2	4	2	IS	NonDorm	Litter	1	0	3	0
H_4	4	2	BS	Dormant	Litter	1	0	1	0
H_5	5	2	TC	Dormant	Control	1	2	6	0.333333333
H_5	5	2	TC	Dormant	Control	2	0	2	0
H_6	5	2	IS	NonDorm	Litter	1	0	5	0
H_6	5	2	IS	NonDorm	Litter	2	0	5	0
H_7	5	2	IS	NonDorm	Control	1	1	4	0.25
H_7	5	2	IS	NonDorm	Control	2	0	48	0
H_8	5	2	IS	Dormant	Litter	1	1	3	0.333333333
H_8	5	2	IS	Dormant	Litter	2	0	28	0
H_9	6	2	BS	NonDorm	Control	2	2	122	0.016393443
H_10	6	2	IS	Mixed	HH	1	29	50	0.58
H_10	6	2	IS	Mixed	HH	2	0	133	0
H_11	6	2	TC	NonDorm	Control	2	1	56	0.017857143
H_12	6	2	IS	Dormant	Litter	1	0	7	0
H_12	6	2	IS	Dormant	Litter	2	0	4	0
I_1	4	2	IS	NonDorm	HH	1	0	5	0
I_3	4	2	BS	Mixed	Control	1	5	9	0.555555556
I_5	5	2	BS	NonDorm	Control	1	0	7	0
I_5	5	2	BS	NonDorm	Control	2	0	4	0
I_6	5	2	BS	Dormant	Litter	1	0	12	0
I_7	5	2	IS	NonDorm	HH	1	0	3	0
I_7	5	2	IS	NonDorm	HH	2	0	35	0
I_8	5	2	BS	NonDorm	Litter	1	0	8	0
I_9	5	2	IS	Mixed	HH	1	0	20	0
I_9	5	2	IS	Mixed	HH	2	0	120	0
I_10	5	2	IS	Mixed	Litter	1	0	9	0
I_10	5	2	IS	Mixed	Litter	2	0	62	0
I_11	6	2	IS	NonDorm	Litter	2	0	7	0
I_12	6	2	IS	NonDorm	HH	1	1	16	0.0625
I_12	6	2	IS	NonDorm	HH	2	0	16	0
J_2	4	2	IS	Dormant	Soil	1	18	24	0.75
J_2	4	2	IS	Dormant	Soil	2	19	41	0.463414634
J_3	4	2	TC	Mixed	Control	1	0	11	0
J_3	4	2	TC	Mixed	Control	2	0	1	0
J_4	4	2	IS	Mixed	Soil	1	7	10	0.7
J_4	4	2	IS	Mixed	Soil	2	0	72	0
J_5	5	2	IS	Dormant	Soil	1	25	26	0.961538462
J_5	5	2	IS	Dormant	Soil	2	0	130	0
J_6	5	2	IS	NonDorm	Soil	1	4	8	0.5
J_6	5	2	IS	NonDorm	Soil	2	0	7	0
J_7	5	2	IS	Dormant	HH	1	3	10	0.3
J_7	5	2	IS	Dormant	HH	2	0	3	0
J_8	5	2	BS	Mixed	Control	1	1	1	1
J_8	5	2	BS	Mixed	Control	2	0	10	0
J_9	5	2	IS	Mixed	Soil	1	17	23	0.739130435
J_9	5	2	IS	Mixed	Soil	2	9	156	0.057692308
J_10	5	2	TC	NonDorm	Control	2	0	70	0
J_11	8	2	IS	Dormant	HH	1	1	5	0.2
J_11	8	2	IS	Dormant	HH	2	0	3	0
J_12	8	2	IS	NonDorm	Control	1	0	4	0
J_12	8	2	IS	NonDorm	Control	2	0	6	0
K_1	7	2	IS	NonDorm	Litter	2	0	5	0
K_2	7	2	TC	Dormant	Control	1	0	3	0
K_2	7	2	TC	Dormant	Control	2	0	70	0
K_3	7	2	TC	Mixed	Control	2	0	54	0
K_4	7	2	IS	Dormant	Control	2	0	256	0
K_5	7	2	IS	NonDorm	HH	1	0	14	0
K_5	7	2	IS	NonDorm	HH	2	0	3	0
K_6	7	2	IS	Mixed	Litter	2	0	2	0
K_7	7	2	BS	Mixed	Control	1	0	5	0
K_7	7	2	BS	Mixed	Control	2	0	27	0
K_8	8	2	IS	NonDorm	HH	1	0	1	0
K_8	8	2	IS	NonDorm	HH	2	0	5	0
K_9	8	2	BS	Dormant	Litter	1	0	9	0
K_9	8	2	BS	Dormant	Litter	2	0	2	0
K_10	8	2	IS	NonDorm	Litter	1	0	4	0
K_10	8	2	IS	NonDorm	Litter	2	0	15	0
K_11	8	2	IS	Mixed	HH	1	0	28	0
K_11	8	2	IS	Mixed	HH	2	0	5	0
K_12	8	2	IS	Dormant	Litter	1	0	1	0
K_12	8	2	IS	Dormant	Litter	2	0	13	0
K_13	8	2	BS	Mixed	Control	1	0	3	0
K_13	8	2	BS	Mixed	Control	2	0	2	0
L_1	7	2	IS	Dormant	HH	1	1	5	0.2
L_1	7	2	IS	Dormant	HH	2	0	212	0
L_2	7	2	IS	Dormant	Litter	1	0	4	0
L_2	7	2	IS	Dormant	Litter	2	0	28	0
L_3	7	2	IS	Dormant	Soil	1	2	2	1
L_3	7	2	IS	Dormant	Soil	2	0	2	0
L_4	7	2	TC	NonDorm	Control	1	0	1	0
L_4	7	2	TC	NonDorm	Control	2	0	2	0
L_5	7	2	BS	Dormant	Litter	1	27	60	0.45
L_5	7	2	BS	Dormant	Litter	2	0	10	0
L_6	7	2	IS	Mixed	HH	1	2	7	0.285714286
L_6	7	2	IS	Mixed	HH	2	0	16	0
L_7	7	2	IS	Mixed	Soil	1	9	15	0.6
L_7	7	2	IS	Mixed	Soil	2	32	116	0.275862069
L_8	8	2	BS	NonDorm	Control	1	0	1	0
L_8	8	2	BS	NonDorm	Control	2	0	10	0
L_9	8	2	TC	NonDorm	Control	1	0	1	0
L_9	8	2	TC	NonDorm	Control	2	1	15	0.066666667
L_10	8	2	IS	Dormant	Soil	1	5	5	1
L_10	8	2	IS	Dormant	Soil	2	0	5	0
L_11	8	2	IS	Dormant	Control	1	4	7	0.571428571
L_11	8	2	IS	Dormant	Control	2	0	29	0
L_12	8	2	TC	Dormant	Control	1	0	7	0
L_12	8	2	TC	Dormant	Control	2	0	154	0
L_13	8	2	BS	Dormant	Control	1	7	24	0.291666667
L_13	8	2	BS	Dormant	Control	2	1	18	0.055555556
M_1	7	2	IS	NonDorm	Soil	1	8	8	1
M_1	7	2	IS	NonDorm	Soil	2	0	68	0
M_2	7	2	BS	Dormant	Control	1	0	2	0
M_2	7	2	BS	Dormant	Control	2	0	11	0
M_3	7	2	BS	NonDorm	Litter	2	0	23	0
M_4	7	2	BS	NonDorm	Control	2	0	10	0
M_5	7	2	IS	NonDorm	Control	2	0	26	0
M_6	7	2	IS	Mixed	Control	1	15	31	0.483870968
M_6	7	2	IS	Mixed	Control	2	0	6	0
M_8	8	2	TC	Mixed	Control	1	9	18	0.5
M_8	8	2	TC	Mixed	Control	2	25	60	0.416666667
M_9	8	2	IS	Mixed	Control	1	22	36	0.611111111
M_9	8	2	IS	Mixed	Control	2	0	13	0
M_10	8	2	BS	NonDorm	Litter	1	0	3	0
M_10	8	2	BS	NonDorm	Litter	2	0	4	0
M_11	8	2	IS	Mixed	Litter	1	6	10	0.6
M_11	8	2	IS	Mixed	Litter	2	0	21	0
M_12	8	2	IS	NonDorm	Soil	1	3	6	0.5
M_12	8	2	IS	NonDorm	Soil	2	0	26	0
M_13	8	2	IS	Mixed	Soil	1	13	28	0.464285714
M_13	8	2	IS	Mixed	Soil	2	0	17	0
;
proc sort;
	by year RIL dorm newblock;
proc means n mean stderr;
	var surv;
	by year RIL dorm newblock;
/*full models  - can include year if use proc logistic due to firth's bias correction*/
/*took out block - no major diffs with it included as fixed or not at all*
proc logistic;
	class dorm RIL year;
	model rosen/minsdln = dorm RIL year dorm*RIL dorm*year RIL*year dorm*RIL*year / link = logit firth;
proc logistic;
	class dorm RIL year;
	model rosen/minsdln = dorm RIL year / link =logit firth;

/*new block random, exclude year 2 due to quasi-complete sep issues*
proc GLIMMIX;
	class dorm RIL newblock;
	model rosen/minsdln = dorm RIL dorm*RIL;
	random intercept / subject=newblock;

/*FOR INDIV TESTS*
proc logistic;
	class dorm year newblock;
	model rosen/minsdln = dorm year dorm*year newblock / link = logit firth;
proc logistic;
	class dorm year newblock;
	model rosen/minsdln = dorm year newblock / link = logit firth;
proc GLIMMIX;
	class dorm year newblock;
	model rosen/minsdln = dorm year dorm*year;
	random intercept / subject=newblock;
/*by year *
proc logistic;
	class dorm newblock;
	model rosen/minsdln = dorm newblock / link = logit firth;
proc GLIMMIX;
	class dorm newblock;
	model rosen/minsdln = dorm;
	random intercept / subject=newblock;
	
run;
quit;
/*

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndHHt1	0.0198
dndHHt2 0.0436
dmHHt1	0.0827
dmHHt2	0.0003
ndmHHt1	0.0001
ndmHHt2	0.0002
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;
*/
data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndNSt1	0.1189
dndNSt2 0.0004
dmNSt1	0.2294
dmNSt2	0.0027
ndmNSt1	0.2452
ndmNSt2	0.0001
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;


data quantsurvtorose_envt;
input popid $ block $ newblock $ RIL $ dorm $ envt $ year $ rosen minsdln surv;
if RIL NE 'IS' then delete;
/*if year = '2' then delete; /*causes quasi-complete sep issues without firth option*/
/* for ind tests */
if envt NE 'Soil' then delete;
if dorm = 'NonDorm' then delete;
if year NE '2' then delete;
/*if dorm NE 'NonDorm' then delete;*/
title 'Log Reg for Surv to Rose from MinSdls - IS Only';
datalines;
A_0	1	1	IS	Dormant	Litter	1	54	60	0.9
A_0	1	1	IS	Dormant	Litter	2	0	18	0
A_1	1	1	BS	Dormant	Control	1	18	34	0.529411765
A_1	1	1	BS	Dormant	Control	2	0	291	0
A_2	1	1	TC	Dormant	Control	1	1	12	0.083333333
A_2	1	1	TC	Dormant	Control	2	0	4	0
A_3	1	1	IS	NonDorm	Litter	1	157	243	0.646090535
A_3	1	1	IS	NonDorm	Litter	2	0	6	0
A_4	1	1	IS	Mixed	HH	1	105	147	0.714285714
A_4	1	1	IS	Mixed	HH	2	45	549	0.081967213
A_5	2	1	IS	Mixed	Litter	1	4	21	0.19047619
A_5	2	1	IS	Mixed	Litter	2	1	1	1
A_6	2	1	BS	Dormant	Litter	1	0	4	0
A_7	2	1	IS	Mixed	Soil	1	38	52	0.730769231
A_8	2	1	TC	Mixed	Control	1	6	14	0.428571429
A_8	2	1	TC	Mixed	Control	2	0	24	0
A_9	3	1	IS	Dormant	Soil	1	12	38	0.315789474
A_9	3	1	IS	Dormant	Soil	2	1	3	0.333333333
A_10	3	1	IS	NonDorm	Litter	1	1	4	0.25
A_11	3	1	TC	Dormant	Control	2	0	43	0
A_12	3	1	BS	Mixed	Control	1	0	4	0
A_12	3	1	BS	Mixed	Control	2	0	31	0
B_0	1	1	IS	Dormant	Soil	1	9	10	0.9
B_1	1	1	IS	Mixed	Control	1	13	32	0.40625
B_1	1	1	IS	Mixed	Control	2	0	78	0
B_2	1	1	IS	NonDorm	HH	1	262	532	0.492481203
B_2	1	1	IS	NonDorm	HH	2	2	94	0.021276596
B_3	1	1	BS	NonDorm	Control	1	0	2	0
B_3	1	1	BS	NonDorm	Control	2	0	7	0
B_4	1	1	IS	Dormant	HH	1	43	56	0.767857143
B_4	1	1	IS	Dormant	HH	2	8	37	0.216216216
B_5	2	1	TC	Dormant	Control	1	0	9	0
B_5	2	1	TC	Dormant	Control	2	0	45	0
B_6	2	1	IS	NonDorm	HH	1	9	20	0.45
B_6	2	1	IS	NonDorm	HH	2	4	211	0.018957346
B_7	2	1	IS	Mixed	Control	1	11	12	0.916666667
B_7	2	1	IS	Mixed	Control	2	0	53	0
B_8	2	1	BS	NonDorm	Control	1	1	5	0.2
B_8	2	1	BS	NonDorm	Control	2	0	45	0
B_9	3	1	TC	Mixed	Control	1	0	9	0
B_9	3	1	TC	Mixed	Control	2	0	13	0
B_10	3	1	TC	NonDorm	Control	1	0	1	0
B_11	3	1	IS	NonDorm	Soil	1	22	23	0.956521739
B_11	3	1	IS	NonDorm	Soil	2	0	2	0
B_12	3	1	IS	Mixed	Soil	1	26	29	0.896551724
B_12	3	1	IS	Mixed	Soil	2	0	1	0
C_0	1	1	BS	NonDorm	Litter	1	2	2	1
C_1	1	1	IS	Dormant	Control	1	7	20	0.35
C_1	1	1	IS	Dormant	Control	2	0	17	0
C_2	1	1	IS	NonDorm	Control	1	1	1	1
C_2	1	1	IS	NonDorm	Control	2	0	32	0
C_3	1	1	IS	Mixed	Litter	1	11	41	0.268292683
C_4	1	1	BS	Dormant	Litter	1	5	8	0.625
C_5	2	1	TC	NonDorm	Control	2	0	38	0
C_6	2	1	BS	Dormant	Control	1	1	5	0.2
C_6	2	1	BS	Dormant	Control	2	0	24	0
C_7	2	1	IS	Dormant	Control	1	0	8	0
C_7	2	1	IS	Dormant	Control	2	3	9	0.333333333
C_9	3	1	IS	Mixed	Control	1	0	1	0
C_9	3	1	IS	Mixed	Control	2	0	2	0
C_10	3	1	IS	Dormant	HH	1	1	19	0.052631579
C_10	3	1	IS	Dormant	HH	2	1	50	0.02
C_11	3	1	BS	NonDorm	Litter	2	0	2	0
C_12	3	1	BS	Dormant	Control	1	0	1	0
C_12	3	1	BS	Dormant	Control	2	0	3	0
C_13	3	1	IS	Mixed	HH	1	1	3	0.333333333
D_0	1	1	TC	Mixed	Control	1	35	46	0.760869565
D_0	1	1	TC	Mixed	Control	2	0	33	0
D_1	1	1	BS	Mixed	Control	1	0	13	0
D_1	1	1	BS	Mixed	Control	2	0	205	0
D_2	1	1	IS	NonDorm	Soil	1	27	51	0.529411765
D_2	1	1	IS	NonDorm	Soil	2	4	8	0.5
D_3	1	1	IS	Mixed	Soil	1	25	26	0.961538462
D_3	1	1	IS	Mixed	Soil	2	2	7	0.285714286
D_4	1	1	TC	NonDorm	Control	1	0	6	0
D_4	1	1	TC	NonDorm	Control	2	0	17	0
D_5	2	1	IS	Mixed	HH	1	24	49	0.489795918
D_5	2	1	IS	Mixed	HH	2	99	239	0.414225941
D_6	2	1	IS	Dormant	HH	1	23	29	0.793103448
D_6	2	1	IS	Dormant	HH	2	9	103	0.087378641
D_8	2	1	IS	NonDorm	Litter	1	2	11	0.181818182
D_8	2	1	IS	NonDorm	Litter	2	4	57	0.070175439
D_9	3	1	IS	NonDorm	Control	1	1	28	0.035714286
D_9	3	1	IS	NonDorm	Control	2	0	2	0
D_10	3	1	IS	Mixed	Litter	1	0	8	0
D_10	3	1	IS	Mixed	Litter	2	0	41	0
D_11	3	1	BS	NonDorm	Control	1	0	4	0
D_11	3	1	BS	NonDorm	Control	2	0	11	0
D_13	3	1	IS	Dormant	Control	1	4	5	0.8
D_13	3	1	IS	Dormant	Control	2	0	2	0
E_1	4	1	IS	NonDorm	Soil	1	28	35	0.8
E_1	4	1	IS	NonDorm	Soil	2	0	3	0
E_2	4	1	IS	Mixed	Control	1	13	38	0.342105263
E_2	4	1	IS	Mixed	Control	2	0	54	0
E_3	4	1	IS	NonDorm	Control	1	3	21	0.142857143
E_3	4	1	IS	NonDorm	Control	2	0	61	0
E_4	4	1	BS	NonDorm	Litter	1	0	8	0
E_4	4	1	BS	NonDorm	Litter	2	0	13	0
E_5	2	1	BS	NonDorm	Litter	1	0	1	0
E_5	2	1	BS	NonDorm	Litter	2	0	25	0
E_7	2	1	IS	Dormant	Litter	1	1	16	0.0625
E_7	2	1	IS	Dormant	Litter	2	0	23	0
E_8	2	1	IS	NonDorm	Control	1	0	4	0
E_8	2	1	IS	NonDorm	Control	2	0	11	0
E_9	6	1	IS	Dormant	Soil	1	8	8	1
E_9	6	1	IS	Dormant	Soil	2	8	39	0.205128205
E_10	6	1	BS	Mixed	Control	2	0	16	0
E_11	6	1	IS	Dormant	Control	2	0	1	0
E_12	6	1	IS	Mixed	Control	1	0	3	0
E_12	6	1	IS	Mixed	Control	2	0	7	0
E_13	3	1	IS	NonDorm	HH	1	2	15	0.133333333
E_13	3	1	IS	NonDorm	HH	2	0	89	0
F_1	4	1	BS	Dormant	Control	1	4	7	0.571428571
F_1	4	1	BS	Dormant	Control	2	0	42	0
F_2	4	1	TC	NonDorm	Control	1	3	8	0.375
F_2	4	1	TC	NonDorm	Control	2	0	36	0
F_3	4	1	IS	Dormant	HH	1	38	63	0.603174603
F_3	4	1	IS	Dormant	HH	2	0	206	0
F_4	4	1	IS	Mixed	HH	1	27	37	0.72972973
F_4	4	1	IS	Mixed	HH	2	7	280	0.025
F_6	2	1	IS	Dormant	Soil	1	15	28	0.535714286
F_6	2	1	IS	Dormant	Soil	2	15	54	0.277777778
F_7	2	1	BS	Mixed	Control	1	0	7	0
F_7	2	1	BS	Mixed	Control	2	0	151	0
F_8	2	1	IS	NonDorm	Soil	1	16	20	0.8
F_8	2	1	IS	NonDorm	Soil	2	0	56	0
F_9	6	1	IS	NonDorm	Control	1	1	3	0.333333333
F_10	6	1	BS	Dormant	Control	1	2	8	0.25
F_10	6	1	BS	Dormant	Control	2	0	12	0
F_11	6	1	TC	Mixed	Control	2	0	1	0
F_12	6	1	IS	NonDorm	Soil	1	7	12	0.583333333
F_12	6	1	IS	NonDorm	Soil	2	0	67	0
G_1	4	1	BS	NonDorm	Control	1	0	7	0
G_1	4	1	BS	NonDorm	Control	2	0	11	0
G_2	4	1	IS	Dormant	Control	1	1	5	0.2
G_2	4	1	IS	Dormant	Control	2	0	23	0
G_3	4	1	IS	Mixed	Litter	1	9	18	0.5
G_3	4	1	IS	Mixed	Litter	2	0	9	0
G_5	5	1	IS	Dormant	Control	1	0	6	0
G_5	5	1	IS	Dormant	Control	2	0	186	0
G_6	5	1	TC	Mixed	Control	1	0	22	0
G_6	5	1	TC	Mixed	Control	2	0	11	0
G_7	5	1	IS	Mixed	Control	1	1	4	0.25
G_7	5	1	IS	Mixed	Control	2	0	5	0
G_8	5	1	BS	Dormant	Control	2	0	28	0
G_9	6	1	IS	Dormant	HH	1	2	19	0.105263158
G_9	6	1	IS	Dormant	HH	2	0	16	0
G_10	6	1	IS	Mixed	Litter	1	1	10	0.1
G_11	6	1	IS	Mixed	Soil	1	6	10	0.6
G_11	6	1	IS	Mixed	Soil	2	60	91	0.659340659
G_12	6	1	TC	Dormant	Control	1	0	3	0
G_12	6	1	TC	Dormant	Control	2	0	75	0
H_1	4	2	TC	Dormant	Control	1	0	1	0
H_1	4	2	TC	Dormant	Control	2	0	9	0
H_2	4	2	IS	NonDorm	Litter	1	0	3	0
H_4	4	2	BS	Dormant	Litter	1	0	1	0
H_5	5	2	TC	Dormant	Control	1	2	6	0.333333333
H_5	5	2	TC	Dormant	Control	2	0	2	0
H_6	5	2	IS	NonDorm	Litter	1	0	5	0
H_6	5	2	IS	NonDorm	Litter	2	0	5	0
H_7	5	2	IS	NonDorm	Control	1	1	4	0.25
H_7	5	2	IS	NonDorm	Control	2	0	48	0
H_8	5	2	IS	Dormant	Litter	1	1	3	0.333333333
H_8	5	2	IS	Dormant	Litter	2	0	28	0
H_9	6	2	BS	NonDorm	Control	2	2	122	0.016393443
H_10	6	2	IS	Mixed	HH	1	29	50	0.58
H_10	6	2	IS	Mixed	HH	2	0	133	0
H_11	6	2	TC	NonDorm	Control	2	1	56	0.017857143
H_12	6	2	IS	Dormant	Litter	1	0	7	0
H_12	6	2	IS	Dormant	Litter	2	0	4	0
I_1	4	2	IS	NonDorm	HH	1	0	5	0
I_3	4	2	BS	Mixed	Control	1	5	9	0.555555556
I_5	5	2	BS	NonDorm	Control	1	0	7	0
I_5	5	2	BS	NonDorm	Control	2	0	4	0
I_6	5	2	BS	Dormant	Litter	1	0	12	0
I_7	5	2	IS	NonDorm	HH	1	0	3	0
I_7	5	2	IS	NonDorm	HH	2	0	35	0
I_8	5	2	BS	NonDorm	Litter	1	0	8	0
I_9	5	2	IS	Mixed	HH	1	0	20	0
I_9	5	2	IS	Mixed	HH	2	0	120	0
I_10	5	2	IS	Mixed	Litter	1	0	9	0
I_10	5	2	IS	Mixed	Litter	2	0	62	0
I_11	6	2	IS	NonDorm	Litter	2	0	7	0
I_12	6	2	IS	NonDorm	HH	1	1	16	0.0625
I_12	6	2	IS	NonDorm	HH	2	0	16	0
J_2	4	2	IS	Dormant	Soil	1	18	24	0.75
J_2	4	2	IS	Dormant	Soil	2	19	41	0.463414634
J_3	4	2	TC	Mixed	Control	1	0	11	0
J_3	4	2	TC	Mixed	Control	2	0	1	0
J_4	4	2	IS	Mixed	Soil	1	7	10	0.7
J_4	4	2	IS	Mixed	Soil	2	0	72	0
J_5	5	2	IS	Dormant	Soil	1	25	26	0.961538462
J_5	5	2	IS	Dormant	Soil	2	0	130	0
J_6	5	2	IS	NonDorm	Soil	1	4	8	0.5
J_6	5	2	IS	NonDorm	Soil	2	0	7	0
J_7	5	2	IS	Dormant	HH	1	3	10	0.3
J_7	5	2	IS	Dormant	HH	2	0	3	0
J_8	5	2	BS	Mixed	Control	1	1	1	1
J_8	5	2	BS	Mixed	Control	2	0	10	0
J_9	5	2	IS	Mixed	Soil	1	17	23	0.739130435
J_9	5	2	IS	Mixed	Soil	2	9	156	0.057692308
J_10	5	2	TC	NonDorm	Control	2	0	70	0
J_11	8	2	IS	Dormant	HH	1	1	5	0.2
J_11	8	2	IS	Dormant	HH	2	0	3	0
J_12	8	2	IS	NonDorm	Control	1	0	4	0
J_12	8	2	IS	NonDorm	Control	2	0	6	0
K_1	7	2	IS	NonDorm	Litter	2	0	5	0
K_2	7	2	TC	Dormant	Control	1	0	3	0
K_2	7	2	TC	Dormant	Control	2	0	70	0
K_3	7	2	TC	Mixed	Control	2	0	54	0
K_4	7	2	IS	Dormant	Control	2	0	256	0
K_5	7	2	IS	NonDorm	HH	1	0	14	0
K_5	7	2	IS	NonDorm	HH	2	0	3	0
K_6	7	2	IS	Mixed	Litter	2	0	2	0
K_7	7	2	BS	Mixed	Control	1	0	5	0
K_7	7	2	BS	Mixed	Control	2	0	27	0
K_8	8	2	IS	NonDorm	HH	1	0	1	0
K_8	8	2	IS	NonDorm	HH	2	0	5	0
K_9	8	2	BS	Dormant	Litter	1	0	9	0
K_9	8	2	BS	Dormant	Litter	2	0	2	0
K_10	8	2	IS	NonDorm	Litter	1	0	4	0
K_10	8	2	IS	NonDorm	Litter	2	0	15	0
K_11	8	2	IS	Mixed	HH	1	0	28	0
K_11	8	2	IS	Mixed	HH	2	0	5	0
K_12	8	2	IS	Dormant	Litter	1	0	1	0
K_12	8	2	IS	Dormant	Litter	2	0	13	0
K_13	8	2	BS	Mixed	Control	1	0	3	0
K_13	8	2	BS	Mixed	Control	2	0	2	0
L_1	7	2	IS	Dormant	HH	1	1	5	0.2
L_1	7	2	IS	Dormant	HH	2	0	212	0
L_2	7	2	IS	Dormant	Litter	1	0	4	0
L_2	7	2	IS	Dormant	Litter	2	0	28	0
L_3	7	2	IS	Dormant	Soil	1	2	2	1
L_3	7	2	IS	Dormant	Soil	2	0	2	0
L_4	7	2	TC	NonDorm	Control	1	0	1	0
L_4	7	2	TC	NonDorm	Control	2	0	2	0
L_5	7	2	BS	Dormant	Litter	1	27	60	0.45
L_5	7	2	BS	Dormant	Litter	2	0	10	0
L_6	7	2	IS	Mixed	HH	1	2	7	0.285714286
L_6	7	2	IS	Mixed	HH	2	0	16	0
L_7	7	2	IS	Mixed	Soil	1	9	15	0.6
L_7	7	2	IS	Mixed	Soil	2	32	116	0.275862069
L_8	8	2	BS	NonDorm	Control	1	0	1	0
L_8	8	2	BS	NonDorm	Control	2	0	10	0
L_9	8	2	TC	NonDorm	Control	1	0	1	0
L_9	8	2	TC	NonDorm	Control	2	1	15	0.066666667
L_10	8	2	IS	Dormant	Soil	1	5	5	1
L_10	8	2	IS	Dormant	Soil	2	0	5	0
L_11	8	2	IS	Dormant	Control	1	4	7	0.571428571
L_11	8	2	IS	Dormant	Control	2	0	29	0
L_12	8	2	TC	Dormant	Control	1	0	7	0
L_12	8	2	TC	Dormant	Control	2	0	154	0
L_13	8	2	BS	Dormant	Control	1	7	24	0.291666667
L_13	8	2	BS	Dormant	Control	2	1	18	0.055555556
M_1	7	2	IS	NonDorm	Soil	1	8	8	1
M_1	7	2	IS	NonDorm	Soil	2	0	68	0
M_2	7	2	BS	Dormant	Control	1	0	2	0
M_2	7	2	BS	Dormant	Control	2	0	11	0
M_3	7	2	BS	NonDorm	Litter	2	0	23	0
M_4	7	2	BS	NonDorm	Control	2	0	10	0
M_5	7	2	IS	NonDorm	Control	2	0	26	0
M_6	7	2	IS	Mixed	Control	1	15	31	0.483870968
M_6	7	2	IS	Mixed	Control	2	0	6	0
M_8	8	2	TC	Mixed	Control	1	9	18	0.5
M_8	8	2	TC	Mixed	Control	2	25	60	0.416666667
M_9	8	2	IS	Mixed	Control	1	22	36	0.611111111
M_9	8	2	IS	Mixed	Control	2	0	13	0
M_10	8	2	BS	NonDorm	Litter	1	0	3	0
M_10	8	2	BS	NonDorm	Litter	2	0	4	0
M_11	8	2	IS	Mixed	Litter	1	6	10	0.6
M_11	8	2	IS	Mixed	Litter	2	0	21	0
M_12	8	2	IS	NonDorm	Soil	1	3	6	0.5
M_12	8	2	IS	NonDorm	Soil	2	0	26	0
M_13	8	2	IS	Mixed	Soil	1	13	28	0.464285714
M_13	8	2	IS	Mixed	Soil	2	0	17	0
;
proc sort;
	by year envt dorm newblock;
proc means n mean stderr;
	var surv;
	by year envt dorm newblock;
/*full models  - can include year if use proc logistic due to firth's bias correction*/
/*took out block - no major diffs with it included as fixed or not at all*
proc logistic;
	class dorm envt year;
	model rosen/minsdln = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / link = logit firth;
proc logistic;
	class dorm envt year;
	model rosen/minsdln = dorm envt year / link = logit firth;
/*new block random, exclude year 2 due to convergence issues*
proc GLIMMIX;
	class dorm envt newblock;
	model rosen/minsdln = dorm envt dorm*envt;
	random intercept / subject=newblock;

/*FOR INDIV TESTS*
proc logistic;
	class dorm year newblock;
	model rosen/minsdln = dorm year dorm*year newblock / link = logit firth;
proc logistic;
	class dorm year newblock;
	model rosen/minsdln = dorm year newblock / link = logit firth;
	
/*By Year*/
proc sort;
	by dorm;
proc means n mean;
	by dorm;
	var surv;
proc logistic;
	class dorm newblock;
	model rosen/minsdln = dorm newblock / link = logit firth;
proc GLIMMIX;
	class dorm newblock;
	model rosen/minsdln = dorm;
	random intercept / subject=newblock;
/*Envt within dorm treatment*
proc logistic;
	class envt year;
	model rosen/minsdln = envt year envt*year / link = logit firth;
proc logistic;
	class envt year;
	model rosen/minsdln = envt year / link = logit firth;
	/* for single year *
	proc GLIMMIX;
	class envt newblock;
	model rosen/minsdln = envt;
	random intercept / subject=newblock; */
run;
quit;
