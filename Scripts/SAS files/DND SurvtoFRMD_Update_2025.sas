/*
data quantsurvtofrmd_ctrl;
input popid $ block $ newblock $ RIL $ dorm $ envt $ year $ frmdn rosen surv;
/*correct cases where more frmd detected than rose*
if surv > 1 then surv1 = 1; else surv1=surv; 
if frmdn > rosen then frmdnc = rosen; else frmdnc=frmdn;
if envt NE 'Control' then delete;
if year = '2' then delete; /*not factorial*
/*for ind tests*
if RIL NE 'IS' then delete;
if dorm = 'Non-Dorm' then delete; *
title 'Log Reg for Surv to FRMD from Rose - Control Only - Capped at 1';
datalines;
A_0	1	1	IS	Dormant	Litter	1	3	54	0.055555556
A_1	1	1	BS	Dormant	Control	1	1	18	0.055555556
A_2	1	1	TC	Dormant	Control	1	0	1	0
A_3	1	1	IS	Non-Dormant	Litter	1	2	157	0.012738854
A_4	1	1	IS	Mixed	HH	2	1	45	0.022222222
A_4	1	1	IS	Mixed	HH	1	49	105	0.466666667
A_5	2	1	IS	Mixed	Litter	1	0	4	0
A_5	2	1	IS	Mixed	Litter	2	0	1	0
A_7	2	1	IS	Mixed	Soil	1	45	38	1.184210526
A_8	2	1	TC	Mixed	Control	1	0	6	0
A_9	3	1	IS	Dormant	Soil	2	0	1	0
A_9	3	1	IS	Dormant	Soil	1	19	12	1.583333333
A_10	3	1	IS	Non-Dormant	Litter	1	0	1	0
B_0	1	1	IS	Dormant	Soil	1	8	9	0.888888889
B_1	1	1	IS	Mixed	Control	1	0	13	0
B_2	1	1	IS	Non-Dormant	HH	2	0	2	0
B_2	1	1	IS	Non-Dormant	HH	1	26	262	0.099236641
B_4	1	1	IS	Dormant	HH	2	0	8	0
B_4	1	1	IS	Dormant	HH	1	46	43	1.069767442
B_6	2	1	IS	Non-Dormant	HH	2	0	4	0
B_6	2	1	IS	Non-Dormant	HH	1	8	9	0.888888889
B_7	2	1	IS	Mixed	Control	1	14	11	1.272727273
B_8	2	1	BS	Non-Dormant	Control	1	0	1	0
B_11	3	1	IS	Non-Dormant	Soil	1	19	22	0.863636364
B_12	3	1	IS	Mixed	Soil	1	11	26	0.423076923
C_0	1	1	BS	Non-Dormant	Litter	1	1	2	0.5
C_1	1	1	IS	Dormant	Control	1	0	7	0
C_2	1	1	IS	Non-Dormant	Control	1	1	1	1
C_3	1	1	IS	Mixed	Litter	1	2	11	0.181818182
C_4	1	1	BS	Dormant	Litter	1	0	5	0
C_6	2	1	BS	Dormant	Control	1	0	1	0
C_7	2	1	IS	Dormant	Control	2	0	3	0
C_10	3	1	IS	Dormant	HH	2	0	1	0
C_10	3	1	IS	Dormant	HH	1	3	1	3
C_13	3	1	IS	Mixed	HH	1	1	1	1
D_0	1	1	TC	Mixed	Control	1	4	35	0.114285714
D_2	1	1	IS	Non-Dormant	Soil	2	0	4	0
D_2	1	1	IS	Non-Dormant	Soil	1	28	27	1.037037037
D_3	1	1	IS	Mixed	Soil	2	2	2	1
D_3	1	1	IS	Mixed	Soil	1	43	25	1.72
D_5	2	1	IS	Mixed	HH	2	2	99	0.02020202
D_5	2	1	IS	Mixed	HH	1	18	24	0.75
D_6	2	1	IS	Dormant	HH	2	0	9	0
D_6	2	1	IS	Dormant	HH	1	18	23	0.782608696
D_8	2	1	IS	Non-Dormant	Litter	2	0	4	0
D_8	2	1	IS	Non-Dormant	Litter	1	3	2	1.5
D_9	3	1	IS	Non-Dormant	Control	1	1	1	1
D_13	3	1	IS	Dormant	Control	1	1	4	0.25
E_1	4	1	IS	Non-Dormant	Soil	1	44	28	1.571428571
E_2	4	1	IS	Mixed	Control	1	5	13	0.384615385
E_3	4	1	IS	Non-Dormant	Control	1	1	3	0.333333333
E_7	2	1	IS	Dormant	Litter	1	0	1	0
E_9	6	1	IS	Dormant	Soil	2	0	8	0
E_9	6	1	IS	Dormant	Soil	1	9	8	1.125
E_13	3	1	IS	Non-Dormant	HH	1	0	2	0
F_1	4	1	BS	Dormant	Control	1	0	4	0
F_2	4	1	TC	Non-Dormant	Control	1	1	3	0.333333333
F_3	4	1	IS	Dormant	HH	1	19	38	0.5
F_4	4	1	IS	Mixed	HH	2	0	7	0
F_4	4	1	IS	Mixed	HH	1	11	27	0.407407407
F_6	2	1	IS	Dormant	Soil	2	0	15	0
F_6	2	1	IS	Dormant	Soil	1	21	15	1.4
F_8	2	1	IS	Non-Dormant	Soil	1	14	16	0.875
F_9	6	1	IS	Non-Dormant	Control	1	0	1	0
F_10	6	1	BS	Dormant	Control	1	0	2	0
F_12	6	1	IS	Non-Dormant	Soil	1	15	7	2.142857143
G_2	4	1	IS	Dormant	Control	1	3	1	3
G_3	4	1	IS	Mixed	Litter	1	4	9	0.444444444
G_7	5	1	IS	Mixed	Control	1	1	1	1
G_9	6	1	IS	Dormant	HH	1	3	2	1.5
G_10	6	1	IS	Mixed	Litter	1	0	1	0
G_11	6	1	IS	Mixed	Soil	2	0	60	0
G_11	6	1	IS	Mixed	Soil	1	21	6	3.5
H_5	5	2	TC	Dormant	Control	1	0	2	0
H_7	5	2	IS	Non-Dormant	Control	1	0	1	0
H_8	5	2	IS	Dormant	Litter	1	0	1	0
H_9	6	2	BS	Non-Dormant	Control	2	0	2	0
H_10	6	2	IS	Mixed	HH	1	17	29	0.586206897
H_11	6	2	TC	Non-Dormant	Control	2	0	1	0
I_3	4	2	BS	Mixed	Control	1	0	5	0
I_12	6	2	IS	Non-Dormant	HH	1	0	1	0
J_2	4	2	IS	Dormant	Soil	2	0	19	0
J_2	4	2	IS	Dormant	Soil	1	22	18	1.222222222
J_4	4	2	IS	Mixed	Soil	1	4	7	0.571428571
J_5	5	2	IS	Dormant	Soil	1	5	25	0.2
J_6	5	2	IS	Non-Dormant	Soil	1	6	4	1.5
J_7	5	2	IS	Dormant	HH	1	10	3	3.333333333
J_8	5	2	BS	Mixed	Control	1	0	1	0
J_9	5	2	IS	Mixed	Soil	2	0	9	0
J_9	5	2	IS	Mixed	Soil	1	15	17	0.882352941
J_11	8	2	IS	Dormant	HH	1	0	1	0
L_1	7	2	IS	Dormant	HH	1	0	1	0
L_3	7	2	IS	Dormant	Soil	1	3	2	1.5
L_5	7	2	BS	Dormant	Litter	1	8	27	0.296296296
L_6	7	2	IS	Mixed	HH	1	0	2	0
L_7	7	2	IS	Mixed	Soil	2	0	32	0
L_7	7	2	IS	Mixed	Soil	1	10	9	1.111111111
L_9	8	2	TC	Non-Dormant	Control	2	0	1	0
L_10	8	2	IS	Dormant	Soil	1	9	5	1.8
L_11	8	2	IS	Dormant	Control	1	3	4	0.75
L_13	8	2	BS	Dormant	Control	2	0	1	0
L_13	8	2	BS	Dormant	Control	1	3	7	0.428571429
M_1	7	2	IS	Non-Dormant	Soil	1	10	8	1.25
M_6	7	2	IS	Mixed	Control	1	3	15	0.2
M_8	8	2	TC	Mixed	Control	2	2	25	0.08
M_8	8	2	TC	Mixed	Control	1	6	9	0.666666667
M_9	8	2	IS	Mixed	Control	1	16	22	0.727272727
M_11	8	2	IS	Mixed	Litter	1	0	6	0
M_12	8	2	IS	Non-Dormant	Soil	1	13	3	4.333333333
M_13	8	2	IS	Mixed	Soil	1	28	13	2.153846154
;
proc sort;
	by year RIL dorm;
proc means n mean stderr;
	var surv1;
	by year RIL dorm;
/*full models - NO BLOCK B/C NOT FACTORIAL; no year 2 for same reason*
proc logistic;
	class dorm RIL;
	model frmdnc/rosen = dorm RIL dorm*RIL / link = logit firth; /*convergence issues even with maxiterations at 300*
proc logistic;
	class dorm RIL year;
	model frmdnc/rosen = dorm RIL / link = logit firth;

/*FOR INDIV TESTS*/
/*by year -BLOCK ONLY FOR IS YEAR 1*
proc logistic;
	class dorm newblock;
	model frmdnc/rosen = dorm newblock / link = logit firth;
proc logistic;
	class dorm;
	model frmdnc/rosen = dorm / link = logit firth;
	*
run;
quit;
*/

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndHHt1	0.0001
dmHHt1	0.0012
ndmHHt1	0.0001
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndNSt1	0.0638
dmNSt1	0.2798
ndmNSt1	0.0260
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndSLt1	0.3848
dmSLt1	0.0259
ndmSLt1	0.0172
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;
/*
data quantsurvtofrmd_envt;
input popid $ block $ newblock $ RIL $ dorm $ envt $ year $ frmdn rosen surv;
/*correct cases where more frmd detected than rose*
if surv > 1 then surv1 = 1; else surv1=surv; 
if frmdn > rosen then frmdnc = rosen; else frmdnc=frmdn;
if RIL NE 'IS' then delete;
/*if year = '2' then delete; /*not factorial*/
/*for ind tests*
if envt NE 'Soil' then delete;
if dorm = 'Non-Dorm' then delete;
if year NE '1' then delete; 
/*if dorm NE 'Non-Dorm' then delete;*
title 'Log Reg for Surv to FRMD from Rose - IS Only';
datalines;
A_0	1	1	IS	Dormant	Litter	1	3	54	0.055555556
A_1	1	1	BS	Dormant	Control	1	1	18	0.055555556
A_2	1	1	TC	Dormant	Control	1	0	1	0
A_3	1	1	IS	Non-Dormant	Litter	1	2	157	0.012738854
A_4	1	1	IS	Mixed	HH	2	1	45	0.022222222
A_4	1	1	IS	Mixed	HH	1	49	105	0.466666667
A_5	2	1	IS	Mixed	Litter	1	0	4	0
A_5	2	1	IS	Mixed	Litter	2	0	1	0
A_7	2	1	IS	Mixed	Soil	1	45	38	1.184210526
A_8	2	1	TC	Mixed	Control	1	0	6	0
A_9	3	1	IS	Dormant	Soil	2	0	1	0
A_9	3	1	IS	Dormant	Soil	1	19	12	1.583333333
A_10	3	1	IS	Non-Dormant	Litter	1	0	1	0
B_0	1	1	IS	Dormant	Soil	1	8	9	0.888888889
B_1	1	1	IS	Mixed	Control	1	0	13	0
B_2	1	1	IS	Non-Dormant	HH	2	0	2	0
B_2	1	1	IS	Non-Dormant	HH	1	26	262	0.099236641
B_4	1	1	IS	Dormant	HH	2	0	8	0
B_4	1	1	IS	Dormant	HH	1	46	43	1.069767442
B_6	2	1	IS	Non-Dormant	HH	2	0	4	0
B_6	2	1	IS	Non-Dormant	HH	1	8	9	0.888888889
B_7	2	1	IS	Mixed	Control	1	14	11	1.272727273
B_8	2	1	BS	Non-Dormant	Control	1	0	1	0
B_11	3	1	IS	Non-Dormant	Soil	1	19	22	0.863636364
B_12	3	1	IS	Mixed	Soil	1	11	26	0.423076923
C_0	1	1	BS	Non-Dormant	Litter	1	1	2	0.5
C_1	1	1	IS	Dormant	Control	1	0	7	0
C_2	1	1	IS	Non-Dormant	Control	1	1	1	1
C_3	1	1	IS	Mixed	Litter	1	2	11	0.181818182
C_4	1	1	BS	Dormant	Litter	1	0	5	0
C_6	2	1	BS	Dormant	Control	1	0	1	0
C_7	2	1	IS	Dormant	Control	2	0	3	0
C_10	3	1	IS	Dormant	HH	2	0	1	0
C_10	3	1	IS	Dormant	HH	1	3	1	3
C_13	3	1	IS	Mixed	HH	1	1	1	1
D_0	1	1	TC	Mixed	Control	1	4	35	0.114285714
D_2	1	1	IS	Non-Dormant	Soil	2	0	4	0
D_2	1	1	IS	Non-Dormant	Soil	1	28	27	1.037037037
D_3	1	1	IS	Mixed	Soil	2	2	2	1
D_3	1	1	IS	Mixed	Soil	1	43	25	1.72
D_5	2	1	IS	Mixed	HH	2	2	99	0.02020202
D_5	2	1	IS	Mixed	HH	1	18	24	0.75
D_6	2	1	IS	Dormant	HH	2	0	9	0
D_6	2	1	IS	Dormant	HH	1	18	23	0.782608696
D_8	2	1	IS	Non-Dormant	Litter	2	0	4	0
D_8	2	1	IS	Non-Dormant	Litter	1	3	2	1.5
D_9	3	1	IS	Non-Dormant	Control	1	1	1	1
D_13	3	1	IS	Dormant	Control	1	1	4	0.25
E_1	4	1	IS	Non-Dormant	Soil	1	44	28	1.571428571
E_2	4	1	IS	Mixed	Control	1	5	13	0.384615385
E_3	4	1	IS	Non-Dormant	Control	1	1	3	0.333333333
E_7	2	1	IS	Dormant	Litter	1	0	1	0
E_9	6	1	IS	Dormant	Soil	2	0	8	0
E_9	6	1	IS	Dormant	Soil	1	9	8	1.125
E_13	3	1	IS	Non-Dormant	HH	1	0	2	0
F_1	4	1	BS	Dormant	Control	1	0	4	0
F_2	4	1	TC	Non-Dormant	Control	1	1	3	0.333333333
F_3	4	1	IS	Dormant	HH	1	19	38	0.5
F_4	4	1	IS	Mixed	HH	2	0	7	0
F_4	4	1	IS	Mixed	HH	1	11	27	0.407407407
F_6	2	1	IS	Dormant	Soil	2	0	15	0
F_6	2	1	IS	Dormant	Soil	1	21	15	1.4
F_8	2	1	IS	Non-Dormant	Soil	1	14	16	0.875
F_9	6	1	IS	Non-Dormant	Control	1	0	1	0
F_10	6	1	BS	Dormant	Control	1	0	2	0
F_12	6	1	IS	Non-Dormant	Soil	1	15	7	2.142857143
G_2	4	1	IS	Dormant	Control	1	3	1	3
G_3	4	1	IS	Mixed	Litter	1	4	9	0.444444444
G_7	5	1	IS	Mixed	Control	1	1	1	1
G_9	6	1	IS	Dormant	HH	1	3	2	1.5
G_10	6	1	IS	Mixed	Litter	1	0	1	0
G_11	6	1	IS	Mixed	Soil	2	0	60	0
G_11	6	1	IS	Mixed	Soil	1	21	6	3.5
H_5	5	2	TC	Dormant	Control	1	0	2	0
H_7	5	2	IS	Non-Dormant	Control	1	0	1	0
H_8	5	2	IS	Dormant	Litter	1	0	1	0
H_9	6	2	BS	Non-Dormant	Control	2	0	2	0
H_10	6	2	IS	Mixed	HH	1	17	29	0.586206897
H_11	6	2	TC	Non-Dormant	Control	2	0	1	0
I_3	4	2	BS	Mixed	Control	1	0	5	0
I_12	6	2	IS	Non-Dormant	HH	1	0	1	0
J_2	4	2	IS	Dormant	Soil	2	0	19	0
J_2	4	2	IS	Dormant	Soil	1	22	18	1.222222222
J_4	4	2	IS	Mixed	Soil	1	4	7	0.571428571
J_5	5	2	IS	Dormant	Soil	1	5	25	0.2
J_6	5	2	IS	Non-Dormant	Soil	1	6	4	1.5
J_7	5	2	IS	Dormant	HH	1	10	3	3.333333333
J_8	5	2	BS	Mixed	Control	1	0	1	0
J_9	5	2	IS	Mixed	Soil	2	0	9	0
J_9	5	2	IS	Mixed	Soil	1	15	17	0.882352941
J_11	8	2	IS	Dormant	HH	1	0	1	0
L_1	7	2	IS	Dormant	HH	1	0	1	0
L_3	7	2	IS	Dormant	Soil	1	3	2	1.5
L_5	7	2	BS	Dormant	Litter	1	8	27	0.296296296
L_6	7	2	IS	Mixed	HH	1	0	2	0
L_7	7	2	IS	Mixed	Soil	2	0	32	0
L_7	7	2	IS	Mixed	Soil	1	10	9	1.111111111
L_9	8	2	TC	Non-Dormant	Control	2	0	1	0
L_10	8	2	IS	Dormant	Soil	1	9	5	1.8
L_11	8	2	IS	Dormant	Control	1	3	4	0.75
L_13	8	2	BS	Dormant	Control	2	0	1	0
L_13	8	2	BS	Dormant	Control	1	3	7	0.428571429
M_1	7	2	IS	Non-Dormant	Soil	1	10	8	1.25
M_6	7	2	IS	Mixed	Control	1	3	15	0.2
M_8	8	2	TC	Mixed	Control	2	2	25	0.08
M_8	8	2	TC	Mixed	Control	1	6	9	0.666666667
M_9	8	2	IS	Mixed	Control	1	16	22	0.727272727
M_11	8	2	IS	Mixed	Litter	1	0	6	0
M_12	8	2	IS	Non-Dormant	Soil	1	13	3	4.333333333
M_13	8	2	IS	Mixed	Soil	1	28	13	2.153846154
;
proc sort;
	by year envt dorm;
proc means n mean stderr;
	var surv1;
	by year envt dorm;
/*full models - NO BLOCK B/C NOT FACTORIAL*
proc logistic;
	class dorm envt year;
	model frmdnc/rosen = dorm envt dorm*envt / link = logit firth;
proc logistic;
	class dorm envt year;
	model frmdnc/rosen = dorm envt / link = logit firth;
	
/*FOR INDIV TESTS - BLOCK ONLY FOR SOIL w/o ND, year only for HH & Soil*
proc logistic;
	class dorm year newblock;
	model frmdnc/rosen = dorm year dorm*year newblock / link = logit firth;
proc logistic;
	class dorm year newblock;
	model frmdnc/rosen = dorm year newblock / link = logit firth;
	
proc logistic;
	class dorm year;
	model frmdnc/rosen = dorm year dorm*year / link = logit firth;
proc logistic;
	class dorm year;
	model frmdnc/rosen = dorm year / link = logit firth;

/*By Year - BLOCK ONLY FOR YEAR 1 AND NATIVE SOIL YEAR 2 w/o ND*
proc logistic;
	class dorm;
	model frmdnc/rosen = dorm / link = logit firth;
proc GLIMMIX;
	class dorm newblock;
	model frmdnc/rosen = dorm;
	random intercept / subject=newblock;
/*Envt within dorm treatment - NO BLOCK OR YEAR 2*
proc logistic;
	class envt;
	model frmdnc/rosen = envt / link = logit firth;
*/
run;
quit;
