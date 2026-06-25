/*
data multtestmingerm;
input test $ Raw_P;
datalines;
dndISy1	0.0628
dndISy2 0.0587
dmISy1	.
dmISy2	0.6263
ndmISy1	0.0627
ndmISy2	0.0112
;
proc multtest inpvalues=multtestmingerm holm hoc fdr;
run;
quit;
/*
data popperstimectrlbi;
input popid $ block $ RIL $ dorm $ envt $ year $ persistence;
if envt NE 'Control' then delete;
if RIL NE 'IS' then delete;
if dorm = 'NonDorm' then delete;
if year NE '2' then delete;
title 'Log Reg for Pop Pers, Binomial - Ctrl';
datalines;
H_9	6	BS	NonDorm	Control	1	.
M_4	7	BS	NonDorm	Control	1	.
B_8	2	BS	NonDorm	Control	1	0
I_5	5	BS	NonDorm	Control	1	0
M_2	7	BS	Dormant	Control	1	0
G_1	4	BS	NonDorm	Control	1	1
J_8	5	BS	Mixed	Control	1	1
K_13	8	BS	Mixed	Control	1	1
M_12	8	IS	NonDorm	Soil	1	1
B_10	3	TC	NonDorm	Control	1	0
H_2	4	IS	NonDorm	Straw	1	0
I_1	4	IS	NonDorm	HH	1	0
A_10	3	IS	NonDorm	Straw	1	1
B_0	1	IS	Dormant	Soil	1	1
B_13	3	IS	Dormant	Straw	1	1
F_9	6	IS	NonDorm	Control	1	1
G_10	6	IS	Mixed	Straw	1	1
I_3	4	BS	Mixed	Control	1	1
H_11	6	TC	NonDorm	Control	1	.
I_11	6	IS	NonDorm	Straw	1	.
J_10	5	TC	NonDorm	Control	1	.
K_6	7	IS	Mixed	Straw	1	.
M_5	7	IS	NonDorm	Control	1	.
B_3	1	BS	NonDorm	Control	1	0
C_6	2	BS	Dormant	Control	1	0
E_13	3	IS	NonDorm	HH	1	0
E_8	2	IS	NonDorm	Control	1	0
G_6	5	TC	Mixed	Control	1	0
H_6	5	IS	NonDorm	Straw	1	0
H_7	5	IS	NonDorm	Control	1	0
H_8	5	IS	Dormant	Straw	1	0
I_10	5	IS	Mixed	Straw	1	0
I_12	6	IS	NonDorm	HH	1	0
I_7	5	IS	NonDorm	HH	1	0
I_9	5	IS	Mixed	HH	1	0
J_11	8	IS	Dormant	HH	1	0
J_12	8	IS	NonDorm	Control	1	0
K_10	8	IS	NonDorm	Straw	1	0
K_11	8	IS	Mixed	HH	1	0
K_12	8	IS	Dormant	Straw	1	0
K_2	7	TC	Dormant	Control	1	0
K_3	7	TC	Mixed	Control	1	0
K_5	7	IS	NonDorm	HH	1	0
K_7	7	BS	Mixed	Control	1	0
K_8	8	IS	NonDorm	HH	1	0
L_1	7	IS	Dormant	HH	1	0
L_2	7	IS	Dormant	Straw	1	0
L_4	7	TC	NonDorm	Control	1	0
L_8	8	BS	NonDorm	Control	1	0
L_9	8	TC	NonDorm	Control	1	0
A_0	1	IS	Dormant	Straw	1	1
A_11	3	TC	Dormant	Control	1	1
A_12	3	BS	Mixed	Control	1	1
A_2	1	TC	Dormant	Control	1	1
A_3	1	IS	NonDorm	Straw	1	1
A_5	2	IS	Mixed	Straw	1	1
B_1	1	IS	Mixed	Control	1	1
B_11	3	IS	NonDorm	Soil	1	1
B_12	3	IS	Mixed	Soil	1	1
B_5	2	TC	Dormant	Control	1	1
C_12	3	BS	Dormant	Control	1	1
C_13	3	IS	Mixed	HH	1	1
C_2	1	IS	NonDorm	Control	1	1
C_3	1	IS	Mixed	Straw	1	1
C_5	2	TC	NonDorm	Control	1	1
D_0	1	TC	Mixed	Control	1	1
D_1	1	BS	Mixed	Control	1	1
D_10	3	IS	Mixed	Straw	1	1
D_11	3	BS	NonDorm	Control	1	1
D_13	3	IS	Dormant	Control	1	1
D_4	1	TC	NonDorm	Control	1	1
E_10	6	BS	Mixed	Control	1	1
E_11	6	IS	Dormant	Control	1	1
E_3	4	IS	NonDorm	Control	1	1
E_7	2	IS	Dormant	Straw	1	1
F_1	4	BS	Dormant	Control	1	1
F_10	6	BS	Dormant	Control	1	1
F_7	2	BS	Mixed	Control	1	1
G_2	4	IS	Dormant	Control	1	1
G_3	4	IS	Mixed	Straw	1	1
G_7	5	IS	Mixed	Control	1	1
G_8	5	BS	Dormant	Control	1	1
G_9	6	IS	Dormant	HH	1	1
H_1	4	TC	Dormant	Control	1	1
H_12	6	IS	Dormant	Straw	1	1
H_5	5	TC	Dormant	Control	1	1
I_4	4	IS	Dormant	Straw	1	1
J_3	4	TC	Mixed	Control	1	1
J_4	4	IS	Mixed	Soil	1	1
J_5	5	IS	Dormant	Soil	1	1
J_6	5	IS	NonDorm	Soil	1	1
K_1	7	IS	NonDorm	Straw	1	1
L_12	8	TC	Dormant	Control	1	1
L_13	8	BS	Dormant	Control	1	1
L_3	7	IS	Dormant	Soil	1	1
M_1	7	IS	NonDorm	Soil	1	1
M_11	8	IS	Mixed	Straw	1	1
A_1	1	BS	Dormant	Control	1	1
A_4	1	IS	Mixed	HH	1	1
A_7	2	IS	Mixed	Soil	1	1
A_8	2	TC	Mixed	Control	1	1
A_9	3	IS	Dormant	Soil	1	1
B_2	1	IS	NonDorm	HH	1	1
B_4	1	IS	Dormant	HH	1	1
B_6	2	IS	NonDorm	HH	1	1
B_7	2	IS	Mixed	Control	1	1
B_9	3	TC	Mixed	Control	1	1
C_1	1	IS	Dormant	Control	1	1
C_10	3	IS	Dormant	HH	1	1
C_7	2	IS	Dormant	Control	1	1
C_9	3	IS	Mixed	Control	1	1
D_2	1	IS	NonDorm	Soil	1	1
D_3	1	IS	Mixed	Soil	1	1
D_5	2	IS	Mixed	HH	1	1
D_6	2	IS	Dormant	HH	1	1
D_8	2	IS	NonDorm	Straw	1	1
D_9	3	IS	NonDorm	Control	1	1
E_1	4	IS	NonDorm	Soil	1	1
E_12	6	IS	Mixed	Control	1	1
E_2	4	IS	Mixed	Control	1	1
E_9	6	IS	Dormant	Soil	1	1
F_11	6	TC	Mixed	Control	1	1
F_12	6	IS	NonDorm	Soil	1	1
F_2	4	TC	NonDorm	Control	1	1
F_3	4	IS	Dormant	HH	1	1
F_4	4	IS	Mixed	HH	1	1
F_6	2	IS	Dormant	Soil	1	1
F_8	2	IS	NonDorm	Soil	1	1
G_11	6	IS	Mixed	Soil	1	1
G_12	6	TC	Dormant	Control	1	1
G_5	5	IS	Dormant	Control	1	1
H_10	6	IS	Mixed	HH	1	1
J_2	4	IS	Dormant	Soil	1	1
J_7	5	IS	Dormant	HH	1	1
J_9	5	IS	Mixed	Soil	1	1
K_4	7	IS	Dormant	Control	1	1
L_10	8	IS	Dormant	Soil	1	1
L_11	8	IS	Dormant	Control	1	1
L_6	7	IS	Mixed	HH	1	1
L_7	7	IS	Mixed	Soil	1	1
M_13	8	IS	Mixed	Soil	1	1
M_6	7	IS	Mixed	Control	1	1
M_8	8	TC	Mixed	Control	1	1
M_9	8	IS	Mixed	Control	1	1
H_9	6	BS	NonDorm	Control	2	0
M_4	7	BS	NonDorm	Control	2	0
B_8	2	BS	NonDorm	Control	2	0
I_5	5	BS	NonDorm	Control	2	0
M_2	7	BS	Dormant	Control	2	0
G_1	4	BS	NonDorm	Control	2	0
J_8	5	BS	Mixed	Control	2	0
K_13	8	BS	Mixed	Control	2	0
M_12	8	IS	NonDorm	Soil	2	1
B_10	3	TC	NonDorm	Control	2	0
H_2	4	IS	NonDorm	Straw	2	0
I_1	4	IS	NonDorm	HH	2	0
A_10	3	IS	NonDorm	Straw	2	0
B_0	1	IS	Dormant	Soil	2	0
B_13	3	IS	Dormant	Straw	2	0
F_9	6	IS	NonDorm	Control	2	0
G_10	6	IS	Mixed	Straw	2	0
I_3	4	BS	Mixed	Control	2	0
H_11	6	TC	NonDorm	Control	2	0
I_11	6	IS	NonDorm	Straw	2	0
J_10	5	TC	NonDorm	Control	2	0
K_6	7	IS	Mixed	Straw	2	0
M_5	7	IS	NonDorm	Control	2	0
B_3	1	BS	NonDorm	Control	2	0
C_6	2	BS	Dormant	Control	2	0
E_13	3	IS	NonDorm	HH	2	0
E_8	2	IS	NonDorm	Control	2	0
G_6	5	TC	Mixed	Control	2	0
H_6	5	IS	NonDorm	Straw	2	0
H_7	5	IS	NonDorm	Control	2	0
H_8	5	IS	Dormant	Straw	2	0
I_10	5	IS	Mixed	Straw	2	0
I_12	6	IS	NonDorm	HH	2	0
I_7	5	IS	NonDorm	HH	2	0
I_9	5	IS	Mixed	HH	2	0
J_11	8	IS	Dormant	HH	2	0
J_12	8	IS	NonDorm	Control	2	0
K_10	8	IS	NonDorm	Straw	2	0
K_11	8	IS	Mixed	HH	2	0
K_12	8	IS	Dormant	Straw	2	0
K_2	7	TC	Dormant	Control	2	0
K_3	7	TC	Mixed	Control	2	0
K_5	7	IS	NonDorm	HH	2	0
K_7	7	BS	Mixed	Control	2	0
K_8	8	IS	NonDorm	HH	2	0
L_1	7	IS	Dormant	HH	2	0
L_2	7	IS	Dormant	Straw	2	0
L_4	7	TC	NonDorm	Control	2	0
L_8	8	BS	NonDorm	Control	2	0
L_9	8	TC	NonDorm	Control	2	0
A_0	1	IS	Dormant	Straw	2	0
A_11	3	TC	Dormant	Control	2	0
A_12	3	BS	Mixed	Control	2	0
A_2	1	TC	Dormant	Control	2	0
A_3	1	IS	NonDorm	Straw	2	0
A_5	2	IS	Mixed	Straw	2	0
B_1	1	IS	Mixed	Control	2	0
B_11	3	IS	NonDorm	Soil	2	0
B_12	3	IS	Mixed	Soil	2	0
B_5	2	TC	Dormant	Control	2	0
C_12	3	BS	Dormant	Control	2	0
C_13	3	IS	Mixed	HH	2	0
C_2	1	IS	NonDorm	Control	2	0
C_3	1	IS	Mixed	Straw	2	0
C_5	2	TC	NonDorm	Control	2	0
D_0	1	TC	Mixed	Control	2	0
D_1	1	BS	Mixed	Control	2	0
D_10	3	IS	Mixed	Straw	2	0
D_11	3	BS	NonDorm	Control	2	0
D_13	3	IS	Dormant	Control	2	0
D_4	1	TC	NonDorm	Control	2	0
E_10	6	BS	Mixed	Control	2	0
E_11	6	IS	Dormant	Control	2	0
E_3	4	IS	NonDorm	Control	2	0
E_7	2	IS	Dormant	Straw	2	0
F_1	4	BS	Dormant	Control	2	0
F_10	6	BS	Dormant	Control	2	0
F_7	2	BS	Mixed	Control	2	0
G_2	4	IS	Dormant	Control	2	0
G_3	4	IS	Mixed	Straw	2	0
G_7	5	IS	Mixed	Control	2	0
G_8	5	BS	Dormant	Control	2	0
G_9	6	IS	Dormant	HH	2	0
H_1	4	TC	Dormant	Control	2	0
H_12	6	IS	Dormant	Straw	2	0
H_5	5	TC	Dormant	Control	2	0
I_4	4	IS	Dormant	Straw	2	0
J_3	4	TC	Mixed	Control	2	0
J_4	4	IS	Mixed	Soil	2	0
J_5	5	IS	Dormant	Soil	2	0
J_6	5	IS	NonDorm	Soil	2	0
K_1	7	IS	NonDorm	Straw	2	0
L_12	8	TC	Dormant	Control	2	0
L_13	8	BS	Dormant	Control	2	0
L_3	7	IS	Dormant	Soil	2	0
M_1	7	IS	NonDorm	Soil	2	0
M_11	8	IS	Mixed	Straw	2	0
A_1	1	BS	Dormant	Control	2	1
A_4	1	IS	Mixed	HH	2	1
A_7	2	IS	Mixed	Soil	2	1
A_8	2	TC	Mixed	Control	2	1
A_9	3	IS	Dormant	Soil	2	1
B_2	1	IS	NonDorm	HH	2	1
B_4	1	IS	Dormant	HH	2	1
B_6	2	IS	NonDorm	HH	2	1
B_7	2	IS	Mixed	Control	2	1
B_9	3	TC	Mixed	Control	2	1
C_1	1	IS	Dormant	Control	2	1
C_10	3	IS	Dormant	HH	2	1
C_7	2	IS	Dormant	Control	2	1
C_9	3	IS	Mixed	Control	2	1
D_2	1	IS	NonDorm	Soil	2	1
D_3	1	IS	Mixed	Soil	2	1
D_5	2	IS	Mixed	HH	2	1
D_6	2	IS	Dormant	HH	2	1
D_8	2	IS	NonDorm	Straw	2	1
D_9	3	IS	NonDorm	Control	2	1
E_1	4	IS	NonDorm	Soil	2	1
E_12	6	IS	Mixed	Control	2	1
E_2	4	IS	Mixed	Control	2	1
E_9	6	IS	Dormant	Soil	2	1
F_11	6	TC	Mixed	Control	2	1
F_12	6	IS	NonDorm	Soil	2	1
F_2	4	TC	NonDorm	Control	2	1
F_3	4	IS	Dormant	HH	2	1
F_4	4	IS	Mixed	HH	2	1
F_6	2	IS	Dormant	Soil	2	1
F_8	2	IS	NonDorm	Soil	2	1
G_11	6	IS	Mixed	Soil	2	1
G_12	6	TC	Dormant	Control	2	1
G_5	5	IS	Dormant	Control	2	1
H_10	6	IS	Mixed	HH	2	1
J_2	4	IS	Dormant	Soil	2	1
J_7	5	IS	Dormant	HH	2	1
J_9	5	IS	Mixed	Soil	2	1
K_4	7	IS	Dormant	Control	2	1
L_10	8	IS	Dormant	Soil	2	1
L_11	8	IS	Dormant	Control	2	1
L_6	7	IS	Mixed	HH	2	1
L_7	7	IS	Mixed	Soil	2	1
M_13	8	IS	Mixed	Soil	2	1
M_6	7	IS	Mixed	Control	2	1
M_8	8	TC	Mixed	Control	2	1
M_9	8	IS	Mixed	Control	2	1
H_9	6	BS	NonDorm	Control	3	0
M_4	7	BS	NonDorm	Control	3	0
B_8	2	BS	NonDorm	Control	3	0
I_5	5	BS	NonDorm	Control	3	0
M_2	7	BS	Dormant	Control	3	0
G_1	4	BS	NonDorm	Control	3	0
J_8	5	BS	Mixed	Control	3	0
K_13	8	BS	Mixed	Control	3	0
M_12	8	IS	NonDorm	Soil	3	0
B_10	3	TC	NonDorm	Control	3	1
H_2	4	IS	NonDorm	Straw	3	1
I_1	4	IS	NonDorm	HH	3	1
A_10	3	IS	NonDorm	Straw	3	1
B_0	1	IS	Dormant	Soil	3	1
B_13	3	IS	Dormant	Straw	3	1
F_9	6	IS	NonDorm	Control	3	1
G_10	6	IS	Mixed	Straw	3	1
I_3	4	BS	Mixed	Control	3	1
H_11	6	TC	NonDorm	Control	3	1
I_11	6	IS	NonDorm	Straw	3	1
J_10	5	TC	NonDorm	Control	3	1
K_6	7	IS	Mixed	Straw	3	1
M_5	7	IS	NonDorm	Control	3	1
B_3	1	BS	NonDorm	Control	3	1
C_6	2	BS	Dormant	Control	3	1
E_13	3	IS	NonDorm	HH	3	1
E_8	2	IS	NonDorm	Control	3	1
G_6	5	TC	Mixed	Control	3	1
H_6	5	IS	NonDorm	Straw	3	1
H_7	5	IS	NonDorm	Control	3	1
H_8	5	IS	Dormant	Straw	3	1
I_10	5	IS	Mixed	Straw	3	1
I_12	6	IS	NonDorm	HH	3	1
I_7	5	IS	NonDorm	HH	3	1
I_9	5	IS	Mixed	HH	3	1
J_11	8	IS	Dormant	HH	3	1
J_12	8	IS	NonDorm	Control	3	1
K_10	8	IS	NonDorm	Straw	3	1
K_11	8	IS	Mixed	HH	3	1
K_12	8	IS	Dormant	Straw	3	1
K_2	7	TC	Dormant	Control	3	1
K_3	7	TC	Mixed	Control	3	1
K_5	7	IS	NonDorm	HH	3	1
K_7	7	BS	Mixed	Control	3	1
K_8	8	IS	NonDorm	HH	3	1
L_1	7	IS	Dormant	HH	3	1
L_2	7	IS	Dormant	Straw	3	1
L_4	7	TC	NonDorm	Control	3	1
L_8	8	BS	NonDorm	Control	3	1
L_9	8	TC	NonDorm	Control	3	1
A_0	1	IS	Dormant	Straw	3	1
A_11	3	TC	Dormant	Control	3	1
A_12	3	BS	Mixed	Control	3	1
A_2	1	TC	Dormant	Control	3	1
A_3	1	IS	NonDorm	Straw	3	1
A_5	2	IS	Mixed	Straw	3	1
B_1	1	IS	Mixed	Control	3	1
B_11	3	IS	NonDorm	Soil	3	1
B_12	3	IS	Mixed	Soil	3	1
B_5	2	TC	Dormant	Control	3	1
C_12	3	BS	Dormant	Control	3	1
C_13	3	IS	Mixed	HH	3	1
C_2	1	IS	NonDorm	Control	3	1
C_3	1	IS	Mixed	Straw	3	1
C_5	2	TC	NonDorm	Control	3	1
D_0	1	TC	Mixed	Control	3	1
D_1	1	BS	Mixed	Control	3	1
D_10	3	IS	Mixed	Straw	3	1
D_11	3	BS	NonDorm	Control	3	1
D_13	3	IS	Dormant	Control	3	1
D_4	1	TC	NonDorm	Control	3	1
E_10	6	BS	Mixed	Control	3	1
E_11	6	IS	Dormant	Control	3	1
E_3	4	IS	NonDorm	Control	3	1
E_7	2	IS	Dormant	Straw	3	1
F_1	4	BS	Dormant	Control	3	1
F_10	6	BS	Dormant	Control	3	1
F_7	2	BS	Mixed	Control	3	1
G_2	4	IS	Dormant	Control	3	1
G_3	4	IS	Mixed	Straw	3	1
G_7	5	IS	Mixed	Control	3	1
G_8	5	BS	Dormant	Control	3	1
G_9	6	IS	Dormant	HH	3	1
H_1	4	TC	Dormant	Control	3	1
H_12	6	IS	Dormant	Straw	3	1
H_5	5	TC	Dormant	Control	3	1
I_4	4	IS	Dormant	Straw	3	1
J_3	4	TC	Mixed	Control	3	1
J_4	4	IS	Mixed	Soil	3	1
J_5	5	IS	Dormant	Soil	3	1
J_6	5	IS	NonDorm	Soil	3	1
K_1	7	IS	NonDorm	Straw	3	1
L_12	8	TC	Dormant	Control	3	1
L_13	8	BS	Dormant	Control	3	1
L_3	7	IS	Dormant	Soil	3	1
M_1	7	IS	NonDorm	Soil	3	1
M_11	8	IS	Mixed	Straw	3	1
A_1	1	BS	Dormant	Control	3	1
A_4	1	IS	Mixed	HH	3	1
A_7	2	IS	Mixed	Soil	3	1
A_8	2	TC	Mixed	Control	3	1
A_9	3	IS	Dormant	Soil	3	1
B_2	1	IS	NonDorm	HH	3	1
B_4	1	IS	Dormant	HH	3	1
B_6	2	IS	NonDorm	HH	3	1
B_7	2	IS	Mixed	Control	3	1
B_9	3	TC	Mixed	Control	3	1
C_1	1	IS	Dormant	Control	3	1
C_10	3	IS	Dormant	HH	3	1
C_7	2	IS	Dormant	Control	3	1
C_9	3	IS	Mixed	Control	3	1
D_2	1	IS	NonDorm	Soil	3	1
D_3	1	IS	Mixed	Soil	3	1
D_5	2	IS	Mixed	HH	3	1
D_6	2	IS	Dormant	HH	3	1
D_8	2	IS	NonDorm	Straw	3	1
D_9	3	IS	NonDorm	Control	3	1
E_1	4	IS	NonDorm	Soil	3	1
E_12	6	IS	Mixed	Control	3	1
E_2	4	IS	Mixed	Control	3	1
E_9	6	IS	Dormant	Soil	3	1
F_11	6	TC	Mixed	Control	3	1
F_12	6	IS	NonDorm	Soil	3	1
F_2	4	TC	NonDorm	Control	3	1
F_3	4	IS	Dormant	HH	3	1
F_4	4	IS	Mixed	HH	3	1
F_6	2	IS	Dormant	Soil	3	1
F_8	2	IS	NonDorm	Soil	3	1
G_11	6	IS	Mixed	Soil	3	1
G_12	6	TC	Dormant	Control	3	1
G_5	5	IS	Dormant	Control	3	1
H_10	6	IS	Mixed	HH	3	1
J_2	4	IS	Dormant	Soil	3	1
J_7	5	IS	Dormant	HH	3	1
J_9	5	IS	Mixed	Soil	3	1
K_4	7	IS	Dormant	Control	3	1
L_10	8	IS	Dormant	Soil	3	1
L_11	8	IS	Dormant	Control	3	1
L_6	7	IS	Mixed	HH	3	1
L_7	7	IS	Mixed	Soil	3	1
M_13	8	IS	Mixed	Soil	3	1
M_6	7	IS	Mixed	Control	3	1
M_8	8	TC	Mixed	Control	3	1
M_9	8	IS	Mixed	Control	3	1
;
/*full model*
proc GLIMMIX;
	class dorm RIL year block;
	model persistence = dorm RIL year dorm*RIL dorm*year RIL*year dorm*RIL*year;
	random intercept / subject=block;

/*FOR INDIV TESTS*
proc GLIMMIX;
	class dorm year block;
	model persistence = dorm year dorm*year;
	random intercept / subject=block;

/*By year*
proc logistic;
	class dorm block;
	model persistence = dorm block / link = logit firth;
proc GLIMMIX;
	class dorm block;
	model persistence = dorm;
	random intercept / subject=block;
run;
quit;
*/
data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndHHy1	0.0331
dndHHy2 0.0796
ndmHHy1	0.0331
ndmHHy2	0.0796
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

/*
data popperstimeISbi;
input popid $ block $ RIL $ dorm $ envt $ year $ persistence;
if RIL NE 'IS' then delete;
/*for ind tests*
if envt NE 'HH' then delete;
if dorm = 'NonDorm' then delete;

if year NE '1' then delete;*
if dorm NE 'NonDorm' then delete;
title 'Log Reg for Pop Pers, Binomial - IS';
datalines;
H_9	6	BS	NonDorm	Control	1	.
M_4	7	BS	NonDorm	Control	1	.
B_8	2	BS	NonDorm	Control	1	0
I_5	5	BS	NonDorm	Control	1	0
M_2	7	BS	Dormant	Control	1	0
G_1	4	BS	NonDorm	Control	1	1
J_8	5	BS	Mixed	Control	1	1
K_13	8	BS	Mixed	Control	1	1
M_12	8	IS	NonDorm	Soil	1	1
B_10	3	TC	NonDorm	Control	1	0
H_2	4	IS	NonDorm	Straw	1	0
I_1	4	IS	NonDorm	HH	1	0
A_10	3	IS	NonDorm	Straw	1	1
B_0	1	IS	Dormant	Soil	1	1
B_13	3	IS	Dormant	Straw	1	1
F_9	6	IS	NonDorm	Control	1	1
G_10	6	IS	Mixed	Straw	1	1
I_3	4	BS	Mixed	Control	1	1
H_11	6	TC	NonDorm	Control	1	.
I_11	6	IS	NonDorm	Straw	1	.
J_10	5	TC	NonDorm	Control	1	.
K_6	7	IS	Mixed	Straw	1	.
M_5	7	IS	NonDorm	Control	1	.
B_3	1	BS	NonDorm	Control	1	0
C_6	2	BS	Dormant	Control	1	0
E_13	3	IS	NonDorm	HH	1	0
E_8	2	IS	NonDorm	Control	1	0
G_6	5	TC	Mixed	Control	1	0
H_6	5	IS	NonDorm	Straw	1	0
H_7	5	IS	NonDorm	Control	1	0
H_8	5	IS	Dormant	Straw	1	0
I_10	5	IS	Mixed	Straw	1	0
I_12	6	IS	NonDorm	HH	1	0
I_7	5	IS	NonDorm	HH	1	0
I_9	5	IS	Mixed	HH	1	0
J_11	8	IS	Dormant	HH	1	0
J_12	8	IS	NonDorm	Control	1	0
K_10	8	IS	NonDorm	Straw	1	0
K_11	8	IS	Mixed	HH	1	0
K_12	8	IS	Dormant	Straw	1	0
K_2	7	TC	Dormant	Control	1	0
K_3	7	TC	Mixed	Control	1	0
K_5	7	IS	NonDorm	HH	1	0
K_7	7	BS	Mixed	Control	1	0
K_8	8	IS	NonDorm	HH	1	0
L_1	7	IS	Dormant	HH	1	0
L_2	7	IS	Dormant	Straw	1	0
L_4	7	TC	NonDorm	Control	1	0
L_8	8	BS	NonDorm	Control	1	0
L_9	8	TC	NonDorm	Control	1	0
A_0	1	IS	Dormant	Straw	1	1
A_11	3	TC	Dormant	Control	1	1
A_12	3	BS	Mixed	Control	1	1
A_2	1	TC	Dormant	Control	1	1
A_3	1	IS	NonDorm	Straw	1	1
A_5	2	IS	Mixed	Straw	1	1
B_1	1	IS	Mixed	Control	1	1
B_11	3	IS	NonDorm	Soil	1	1
B_12	3	IS	Mixed	Soil	1	1
B_5	2	TC	Dormant	Control	1	1
C_12	3	BS	Dormant	Control	1	1
C_13	3	IS	Mixed	HH	1	1
C_2	1	IS	NonDorm	Control	1	1
C_3	1	IS	Mixed	Straw	1	1
C_5	2	TC	NonDorm	Control	1	1
D_0	1	TC	Mixed	Control	1	1
D_1	1	BS	Mixed	Control	1	1
D_10	3	IS	Mixed	Straw	1	1
D_11	3	BS	NonDorm	Control	1	1
D_13	3	IS	Dormant	Control	1	1
D_4	1	TC	NonDorm	Control	1	1
E_10	6	BS	Mixed	Control	1	1
E_11	6	IS	Dormant	Control	1	1
E_3	4	IS	NonDorm	Control	1	1
E_7	2	IS	Dormant	Straw	1	1
F_1	4	BS	Dormant	Control	1	1
F_10	6	BS	Dormant	Control	1	1
F_7	2	BS	Mixed	Control	1	1
G_2	4	IS	Dormant	Control	1	1
G_3	4	IS	Mixed	Straw	1	1
G_7	5	IS	Mixed	Control	1	1
G_8	5	BS	Dormant	Control	1	1
G_9	6	IS	Dormant	HH	1	1
H_1	4	TC	Dormant	Control	1	1
H_12	6	IS	Dormant	Straw	1	1
H_5	5	TC	Dormant	Control	1	1
I_4	4	IS	Dormant	Straw	1	1
J_3	4	TC	Mixed	Control	1	1
J_4	4	IS	Mixed	Soil	1	1
J_5	5	IS	Dormant	Soil	1	1
J_6	5	IS	NonDorm	Soil	1	1
K_1	7	IS	NonDorm	Straw	1	1
L_12	8	TC	Dormant	Control	1	1
L_13	8	BS	Dormant	Control	1	1
L_3	7	IS	Dormant	Soil	1	1
M_1	7	IS	NonDorm	Soil	1	1
M_11	8	IS	Mixed	Straw	1	1
A_1	1	BS	Dormant	Control	1	1
A_4	1	IS	Mixed	HH	1	1
A_7	2	IS	Mixed	Soil	1	1
A_8	2	TC	Mixed	Control	1	1
A_9	3	IS	Dormant	Soil	1	1
B_2	1	IS	NonDorm	HH	1	1
B_4	1	IS	Dormant	HH	1	1
B_6	2	IS	NonDorm	HH	1	1
B_7	2	IS	Mixed	Control	1	1
B_9	3	TC	Mixed	Control	1	1
C_1	1	IS	Dormant	Control	1	1
C_10	3	IS	Dormant	HH	1	1
C_7	2	IS	Dormant	Control	1	1
C_9	3	IS	Mixed	Control	1	1
D_2	1	IS	NonDorm	Soil	1	1
D_3	1	IS	Mixed	Soil	1	1
D_5	2	IS	Mixed	HH	1	1
D_6	2	IS	Dormant	HH	1	1
D_8	2	IS	NonDorm	Straw	1	1
D_9	3	IS	NonDorm	Control	1	1
E_1	4	IS	NonDorm	Soil	1	1
E_12	6	IS	Mixed	Control	1	1
E_2	4	IS	Mixed	Control	1	1
E_9	6	IS	Dormant	Soil	1	1
F_11	6	TC	Mixed	Control	1	1
F_12	6	IS	NonDorm	Soil	1	1
F_2	4	TC	NonDorm	Control	1	1
F_3	4	IS	Dormant	HH	1	1
F_4	4	IS	Mixed	HH	1	1
F_6	2	IS	Dormant	Soil	1	1
F_8	2	IS	NonDorm	Soil	1	1
G_11	6	IS	Mixed	Soil	1	1
G_12	6	TC	Dormant	Control	1	1
G_5	5	IS	Dormant	Control	1	1
H_10	6	IS	Mixed	HH	1	1
J_2	4	IS	Dormant	Soil	1	1
J_7	5	IS	Dormant	HH	1	1
J_9	5	IS	Mixed	Soil	1	1
K_4	7	IS	Dormant	Control	1	1
L_10	8	IS	Dormant	Soil	1	1
L_11	8	IS	Dormant	Control	1	1
L_6	7	IS	Mixed	HH	1	1
L_7	7	IS	Mixed	Soil	1	1
M_13	8	IS	Mixed	Soil	1	1
M_6	7	IS	Mixed	Control	1	1
M_8	8	TC	Mixed	Control	1	1
M_9	8	IS	Mixed	Control	1	1
H_9	6	BS	NonDorm	Control	2	0
M_4	7	BS	NonDorm	Control	2	0
B_8	2	BS	NonDorm	Control	2	0
I_5	5	BS	NonDorm	Control	2	0
M_2	7	BS	Dormant	Control	2	0
G_1	4	BS	NonDorm	Control	2	0
J_8	5	BS	Mixed	Control	2	0
K_13	8	BS	Mixed	Control	2	0
M_12	8	IS	NonDorm	Soil	2	1
B_10	3	TC	NonDorm	Control	2	0
H_2	4	IS	NonDorm	Straw	2	0
I_1	4	IS	NonDorm	HH	2	0
A_10	3	IS	NonDorm	Straw	2	0
B_0	1	IS	Dormant	Soil	2	0
B_13	3	IS	Dormant	Straw	2	0
F_9	6	IS	NonDorm	Control	2	0
G_10	6	IS	Mixed	Straw	2	0
I_3	4	BS	Mixed	Control	2	0
H_11	6	TC	NonDorm	Control	2	0
I_11	6	IS	NonDorm	Straw	2	0
J_10	5	TC	NonDorm	Control	2	0
K_6	7	IS	Mixed	Straw	2	0
M_5	7	IS	NonDorm	Control	2	0
B_3	1	BS	NonDorm	Control	2	0
C_6	2	BS	Dormant	Control	2	0
E_13	3	IS	NonDorm	HH	2	0
E_8	2	IS	NonDorm	Control	2	0
G_6	5	TC	Mixed	Control	2	0
H_6	5	IS	NonDorm	Straw	2	0
H_7	5	IS	NonDorm	Control	2	0
H_8	5	IS	Dormant	Straw	2	0
I_10	5	IS	Mixed	Straw	2	0
I_12	6	IS	NonDorm	HH	2	0
I_7	5	IS	NonDorm	HH	2	0
I_9	5	IS	Mixed	HH	2	0
J_11	8	IS	Dormant	HH	2	0
J_12	8	IS	NonDorm	Control	2	0
K_10	8	IS	NonDorm	Straw	2	0
K_11	8	IS	Mixed	HH	2	0
K_12	8	IS	Dormant	Straw	2	0
K_2	7	TC	Dormant	Control	2	0
K_3	7	TC	Mixed	Control	2	0
K_5	7	IS	NonDorm	HH	2	0
K_7	7	BS	Mixed	Control	2	0
K_8	8	IS	NonDorm	HH	2	0
L_1	7	IS	Dormant	HH	2	0
L_2	7	IS	Dormant	Straw	2	0
L_4	7	TC	NonDorm	Control	2	0
L_8	8	BS	NonDorm	Control	2	0
L_9	8	TC	NonDorm	Control	2	0
A_0	1	IS	Dormant	Straw	2	0
A_11	3	TC	Dormant	Control	2	0
A_12	3	BS	Mixed	Control	2	0
A_2	1	TC	Dormant	Control	2	0
A_3	1	IS	NonDorm	Straw	2	0
A_5	2	IS	Mixed	Straw	2	0
B_1	1	IS	Mixed	Control	2	0
B_11	3	IS	NonDorm	Soil	2	0
B_12	3	IS	Mixed	Soil	2	0
B_5	2	TC	Dormant	Control	2	0
C_12	3	BS	Dormant	Control	2	0
C_13	3	IS	Mixed	HH	2	0
C_2	1	IS	NonDorm	Control	2	0
C_3	1	IS	Mixed	Straw	2	0
C_5	2	TC	NonDorm	Control	2	0
D_0	1	TC	Mixed	Control	2	0
D_1	1	BS	Mixed	Control	2	0
D_10	3	IS	Mixed	Straw	2	0
D_11	3	BS	NonDorm	Control	2	0
D_13	3	IS	Dormant	Control	2	0
D_4	1	TC	NonDorm	Control	2	0
E_10	6	BS	Mixed	Control	2	0
E_11	6	IS	Dormant	Control	2	0
E_3	4	IS	NonDorm	Control	2	0
E_7	2	IS	Dormant	Straw	2	0
F_1	4	BS	Dormant	Control	2	0
F_10	6	BS	Dormant	Control	2	0
F_7	2	BS	Mixed	Control	2	0
G_2	4	IS	Dormant	Control	2	0
G_3	4	IS	Mixed	Straw	2	0
G_7	5	IS	Mixed	Control	2	0
G_8	5	BS	Dormant	Control	2	0
G_9	6	IS	Dormant	HH	2	0
H_1	4	TC	Dormant	Control	2	0
H_12	6	IS	Dormant	Straw	2	0
H_5	5	TC	Dormant	Control	2	0
I_4	4	IS	Dormant	Straw	2	0
J_3	4	TC	Mixed	Control	2	0
J_4	4	IS	Mixed	Soil	2	0
J_5	5	IS	Dormant	Soil	2	0
J_6	5	IS	NonDorm	Soil	2	0
K_1	7	IS	NonDorm	Straw	2	0
L_12	8	TC	Dormant	Control	2	0
L_13	8	BS	Dormant	Control	2	0
L_3	7	IS	Dormant	Soil	2	0
M_1	7	IS	NonDorm	Soil	2	0
M_11	8	IS	Mixed	Straw	2	0
A_1	1	BS	Dormant	Control	2	1
A_4	1	IS	Mixed	HH	2	1
A_7	2	IS	Mixed	Soil	2	1
A_8	2	TC	Mixed	Control	2	1
A_9	3	IS	Dormant	Soil	2	1
B_2	1	IS	NonDorm	HH	2	1
B_4	1	IS	Dormant	HH	2	1
B_6	2	IS	NonDorm	HH	2	1
B_7	2	IS	Mixed	Control	2	1
B_9	3	TC	Mixed	Control	2	1
C_1	1	IS	Dormant	Control	2	1
C_10	3	IS	Dormant	HH	2	1
C_7	2	IS	Dormant	Control	2	1
C_9	3	IS	Mixed	Control	2	1
D_2	1	IS	NonDorm	Soil	2	1
D_3	1	IS	Mixed	Soil	2	1
D_5	2	IS	Mixed	HH	2	1
D_6	2	IS	Dormant	HH	2	1
D_8	2	IS	NonDorm	Straw	2	1
D_9	3	IS	NonDorm	Control	2	1
E_1	4	IS	NonDorm	Soil	2	1
E_12	6	IS	Mixed	Control	2	1
E_2	4	IS	Mixed	Control	2	1
E_9	6	IS	Dormant	Soil	2	1
F_11	6	TC	Mixed	Control	2	1
F_12	6	IS	NonDorm	Soil	2	1
F_2	4	TC	NonDorm	Control	2	1
F_3	4	IS	Dormant	HH	2	1
F_4	4	IS	Mixed	HH	2	1
F_6	2	IS	Dormant	Soil	2	1
F_8	2	IS	NonDorm	Soil	2	1
G_11	6	IS	Mixed	Soil	2	1
G_12	6	TC	Dormant	Control	2	1
G_5	5	IS	Dormant	Control	2	1
H_10	6	IS	Mixed	HH	2	1
J_2	4	IS	Dormant	Soil	2	1
J_7	5	IS	Dormant	HH	2	1
J_9	5	IS	Mixed	Soil	2	1
K_4	7	IS	Dormant	Control	2	1
L_10	8	IS	Dormant	Soil	2	1
L_11	8	IS	Dormant	Control	2	1
L_6	7	IS	Mixed	HH	2	1
L_7	7	IS	Mixed	Soil	2	1
M_13	8	IS	Mixed	Soil	2	1
M_6	7	IS	Mixed	Control	2	1
M_8	8	TC	Mixed	Control	2	1
M_9	8	IS	Mixed	Control	2	1
H_9	6	BS	NonDorm	Control	3	0
M_4	7	BS	NonDorm	Control	3	0
B_8	2	BS	NonDorm	Control	3	0
I_5	5	BS	NonDorm	Control	3	0
M_2	7	BS	Dormant	Control	3	0
G_1	4	BS	NonDorm	Control	3	0
J_8	5	BS	Mixed	Control	3	0
K_13	8	BS	Mixed	Control	3	0
M_12	8	IS	NonDorm	Soil	3	0
B_10	3	TC	NonDorm	Control	3	1
H_2	4	IS	NonDorm	Straw	3	1
I_1	4	IS	NonDorm	HH	3	1
A_10	3	IS	NonDorm	Straw	3	1
B_0	1	IS	Dormant	Soil	3	1
B_13	3	IS	Dormant	Straw	3	1
F_9	6	IS	NonDorm	Control	3	1
G_10	6	IS	Mixed	Straw	3	1
I_3	4	BS	Mixed	Control	3	1
H_11	6	TC	NonDorm	Control	3	1
I_11	6	IS	NonDorm	Straw	3	1
J_10	5	TC	NonDorm	Control	3	1
K_6	7	IS	Mixed	Straw	3	1
M_5	7	IS	NonDorm	Control	3	1
B_3	1	BS	NonDorm	Control	3	1
C_6	2	BS	Dormant	Control	3	1
E_13	3	IS	NonDorm	HH	3	1
E_8	2	IS	NonDorm	Control	3	1
G_6	5	TC	Mixed	Control	3	1
H_6	5	IS	NonDorm	Straw	3	1
H_7	5	IS	NonDorm	Control	3	1
H_8	5	IS	Dormant	Straw	3	1
I_10	5	IS	Mixed	Straw	3	1
I_12	6	IS	NonDorm	HH	3	1
I_7	5	IS	NonDorm	HH	3	1
I_9	5	IS	Mixed	HH	3	1
J_11	8	IS	Dormant	HH	3	1
J_12	8	IS	NonDorm	Control	3	1
K_10	8	IS	NonDorm	Straw	3	1
K_11	8	IS	Mixed	HH	3	1
K_12	8	IS	Dormant	Straw	3	1
K_2	7	TC	Dormant	Control	3	1
K_3	7	TC	Mixed	Control	3	1
K_5	7	IS	NonDorm	HH	3	1
K_7	7	BS	Mixed	Control	3	1
K_8	8	IS	NonDorm	HH	3	1
L_1	7	IS	Dormant	HH	3	1
L_2	7	IS	Dormant	Straw	3	1
L_4	7	TC	NonDorm	Control	3	1
L_8	8	BS	NonDorm	Control	3	1
L_9	8	TC	NonDorm	Control	3	1
A_0	1	IS	Dormant	Straw	3	1
A_11	3	TC	Dormant	Control	3	1
A_12	3	BS	Mixed	Control	3	1
A_2	1	TC	Dormant	Control	3	1
A_3	1	IS	NonDorm	Straw	3	1
A_5	2	IS	Mixed	Straw	3	1
B_1	1	IS	Mixed	Control	3	1
B_11	3	IS	NonDorm	Soil	3	1
B_12	3	IS	Mixed	Soil	3	1
B_5	2	TC	Dormant	Control	3	1
C_12	3	BS	Dormant	Control	3	1
C_13	3	IS	Mixed	HH	3	1
C_2	1	IS	NonDorm	Control	3	1
C_3	1	IS	Mixed	Straw	3	1
C_5	2	TC	NonDorm	Control	3	1
D_0	1	TC	Mixed	Control	3	1
D_1	1	BS	Mixed	Control	3	1
D_10	3	IS	Mixed	Straw	3	1
D_11	3	BS	NonDorm	Control	3	1
D_13	3	IS	Dormant	Control	3	1
D_4	1	TC	NonDorm	Control	3	1
E_10	6	BS	Mixed	Control	3	1
E_11	6	IS	Dormant	Control	3	1
E_3	4	IS	NonDorm	Control	3	1
E_7	2	IS	Dormant	Straw	3	1
F_1	4	BS	Dormant	Control	3	1
F_10	6	BS	Dormant	Control	3	1
F_7	2	BS	Mixed	Control	3	1
G_2	4	IS	Dormant	Control	3	1
G_3	4	IS	Mixed	Straw	3	1
G_7	5	IS	Mixed	Control	3	1
G_8	5	BS	Dormant	Control	3	1
G_9	6	IS	Dormant	HH	3	1
H_1	4	TC	Dormant	Control	3	1
H_12	6	IS	Dormant	Straw	3	1
H_5	5	TC	Dormant	Control	3	1
I_4	4	IS	Dormant	Straw	3	1
J_3	4	TC	Mixed	Control	3	1
J_4	4	IS	Mixed	Soil	3	1
J_5	5	IS	Dormant	Soil	3	1
J_6	5	IS	NonDorm	Soil	3	1
K_1	7	IS	NonDorm	Straw	3	1
L_12	8	TC	Dormant	Control	3	1
L_13	8	BS	Dormant	Control	3	1
L_3	7	IS	Dormant	Soil	3	1
M_1	7	IS	NonDorm	Soil	3	1
M_11	8	IS	Mixed	Straw	3	1
A_1	1	BS	Dormant	Control	3	1
A_4	1	IS	Mixed	HH	3	1
A_7	2	IS	Mixed	Soil	3	1
A_8	2	TC	Mixed	Control	3	1
A_9	3	IS	Dormant	Soil	3	1
B_2	1	IS	NonDorm	HH	3	1
B_4	1	IS	Dormant	HH	3	1
B_6	2	IS	NonDorm	HH	3	1
B_7	2	IS	Mixed	Control	3	1
B_9	3	TC	Mixed	Control	3	1
C_1	1	IS	Dormant	Control	3	1
C_10	3	IS	Dormant	HH	3	1
C_7	2	IS	Dormant	Control	3	1
C_9	3	IS	Mixed	Control	3	1
D_2	1	IS	NonDorm	Soil	3	1
D_3	1	IS	Mixed	Soil	3	1
D_5	2	IS	Mixed	HH	3	1
D_6	2	IS	Dormant	HH	3	1
D_8	2	IS	NonDorm	Straw	3	1
D_9	3	IS	NonDorm	Control	3	1
E_1	4	IS	NonDorm	Soil	3	1
E_12	6	IS	Mixed	Control	3	1
E_2	4	IS	Mixed	Control	3	1
E_9	6	IS	Dormant	Soil	3	1
F_11	6	TC	Mixed	Control	3	1
F_12	6	IS	NonDorm	Soil	3	1
F_2	4	TC	NonDorm	Control	3	1
F_3	4	IS	Dormant	HH	3	1
F_4	4	IS	Mixed	HH	3	1
F_6	2	IS	Dormant	Soil	3	1
F_8	2	IS	NonDorm	Soil	3	1
G_11	6	IS	Mixed	Soil	3	1
G_12	6	TC	Dormant	Control	3	1
G_5	5	IS	Dormant	Control	3	1
H_10	6	IS	Mixed	HH	3	1
J_2	4	IS	Dormant	Soil	3	1
J_7	5	IS	Dormant	HH	3	1
J_9	5	IS	Mixed	Soil	3	1
K_4	7	IS	Dormant	Control	3	1
L_10	8	IS	Dormant	Soil	3	1
L_11	8	IS	Dormant	Control	3	1
L_6	7	IS	Mixed	HH	3	1
L_7	7	IS	Mixed	Soil	3	1
M_13	8	IS	Mixed	Soil	3	1
M_6	7	IS	Mixed	Control	3	1
M_8	8	TC	Mixed	Control	3	1
M_9	8	IS	Mixed	Control	3	1
;
/*full model*
proc GLIMMIX;
	class dorm envt year block;
	model persistence = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year;
	random intercept / subject=block;

/*FOR INDIV TESTS*
proc GLIMMIX;
	class dorm year block;
	model persistence = dorm year dorm*year;
	random intercept / subject=block;
	
/*By Year*
proc GLIMMIX;
	class dorm block;
	model persistence = dorm;
	random intercept / subject=block;

/*Envt within dorm treatment*
proc logistic;
	class envt year block;
	model persistence = envt year envt*year block / link = logit firth;
proc logistic;
	class envt year block;
	model persistence = envt year block / link = logit firth;
proc GLIMMIX;
	class envt year block;
	model persistence = envt year envt*year;
	random intercept / subject=block;
	*/
run;
quit;
