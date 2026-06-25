data sbpotsgerm_updatey1;
input popid $ block $ dorm $ envt $ year $ conftotal maxtotal confprop maxprop;
planted = 114;
if year NE '1' then delete;
/*ind tests:*/
if envt NE 'Soil' then delete;
title 'SB Germ Props - Year 1';
datalines;
A_13	3	Dormant	Soil	1	12	18	0.105263158	0.157894737
A_13	3	Dormant	Soil	2	0	0	0	0
A_13	3	NonDorm	Soil	1	1	5	0.00877193	0.043859649
A_13	3	NonDorm	Soil	2	0	0	0	0
A_6	2	Dormant	Control	1	15	26	0.131578947	0.228070175
A_6	2	Dormant	Control	2	0	0	0	0
A_6	2	NonDorm	Control	1	41	47	0.359649123	0.412280702
A_6	2	NonDorm	Control	2	0	0	0	0
B/C_3.5	1	Dormant	Soil	1	7	7	0.061403509	0.061403509
B/C_3.5	1	Dormant	Soil	2	1	1	0.00877193	0.00877193
B/C_3.5	1	NonDorm	Soil	1	0	0	0	0
B/C_3.5	1	NonDorm	Soil	2	0	0	0	0
C_0	1	Dormant	Control	1	17	21	0.149122807	0.184210526
C_0	1	Dormant	Control	2	0	0	0	0
C_0	1	NonDorm	Control	1	9	12	0.078947368	0.105263158
C_0	1	NonDorm	Control	2	0	1	0	0.00877193
C_11	3	Dormant	Control	1	33	42	0.289473684	0.368421053
C_11	3	Dormant	Control	2	0	1	0	0.00877193
C_11	3	NonDorm	Control	1	19	21	0.166666667	0.184210526
C_11	3	NonDorm	Control	2	0	0	0	0
C_4	1	Dormant	HH	1	43	53	0.377192982	0.464912281
C_4	1	Dormant	HH	2	0	0	0	0
C_4	1	NonDorm	HH	1	6	7	0.052631579	0.061403509
C_4	1	NonDorm	HH	2	0	0	0	0
C_8	2	Dormant	Soil	1	2	5	0.01754386	0.043859649
C_8	2	Dormant	Soil	2	0	0	0	0
C_8	2	NonDorm	Soil	1	0	0	0	0
C_8	2	NonDorm	Soil	2	0	0	0	0
D_12	3	Dormant	HH	1	28	46	0.245614035	0.403508772
D_12	3	Dormant	HH	2	0	0	0	0
D_12	3	NonDorm	HH	1	18	23	0.157894737	0.201754386
D_12	3	NonDorm	HH	2	2	2	0.01754386	0.01754386
E_4	4	Dormant	Control	1	45	68	0.394736842	0.596491228
E_4	4	Dormant	Control	2	0	3	0	0.026315789
E_4	4	NonDorm	Control	1	6	9	0.052631579	0.078947368
E_4	4	NonDorm	Control	2	0	0	0	0
E_5	2	Dormant	HH	1	33	43	0.289473684	0.377192982
E_5	2	Dormant	HH	2	7	7	0.061403509	0.061403509
E_5	2	NonDorm	HH	1	26	29	0.228070175	0.254385965
E_5	2	NonDorm	HH	2	0	0	0	0
F_13	6	Dormant	Control	1	34	57	0.298245614	0.5
F_13	6	Dormant	Control	2	0	0	0	0
F_13	6	NonDorm	Control	1	17	26	0.149122807	0.228070175
F_13	6	NonDorm	Control	2	0	2	0	0.01754386
G/H_2.5	4	Dormant	Soil	1	2	13	0.01754386	0.114035088
G/H_2.5	4	Dormant	Soil	2	5	6	0.043859649	0.052631579
G/H_2.5	4	NonDorm	Soil	1	0	7	0	0.061403509
G/H_2.5	4	NonDorm	Soil	2	1	1	0.00877193	0.00877193
G_13	6	Dormant	HH	1	44	61	0.385964912	0.535087719
G_13	6	Dormant	HH	2	0	0	0	0
G_13	6	NonDorm	HH	1	14	18	0.122807018	0.157894737
G_13	6	NonDorm	HH	2	1	1	0.00877193	0.00877193
H_13	6	Dormant	Soil	1	9	12	0.078947368	0.105263158
H_13	6	Dormant	Soil	2	0	0	0	0
H_13	6	NonDorm	Soil	1	0	4	0	0.035087719
H_13	6	NonDorm	Soil	2	0	0	0	0
H_4	4	Dormant	HH	1	38	48	0.333333333	0.421052632
H_4	4	Dormant	HH	2	10	10	0.087719298	0.087719298
H_4	4	NonDorm	HH	1	16	23	0.140350877	0.201754386
H_4	4	NonDorm	HH	2	0	0	0	0
I_6	5	Dormant	Control	1	30	40	0.263157895	0.350877193
I_6	5	Dormant	Control	2	0	0	0	0
I_6	5	NonDorm	Control	1	57	63	0.5	0.552631579
I_6	5	NonDorm	Control	2	0	0	0	0
I_8	5	Dormant	HH	1	39	48	0.342105263	0.421052632
I_8	5	Dormant	HH	2	2	2	0.01754386	0.01754386
I_8	5	NonDorm	HH	1	64	65	0.561403509	0.570175439
I_8	5	NonDorm	HH	2	0	0	0	0
J/K_6.5	5	Dormant	Soil	1	14	14	0.122807018	0.122807018
J/K_6.5	5	Dormant	Soil	2	0	0	0	0
J/K_6.5	5	NonDorm	Soil	1	4	6	0.035087719	0.052631579
J/K_6.5	5	NonDorm	Soil	2	1	1	0.00877193	0.00877193
J_13	8	Dormant	Soil	1	4	6	0.035087719	0.052631579
J_13	8	Dormant	Soil	2	1	1	0.00877193	0.00877193
J_13	8	NonDorm	Soil	1	0	0	0	0
J_13	8	NonDorm	Soil	2	0	0	0	0
K_9	8	Dormant	Control	1	29	34	0.254385965	0.298245614
K_9	8	Dormant	Control	2	1	1	0.00877193	0.00877193
K_9	8	NonDorm	Control	1	53	55	0.464912281	0.48245614
K_9	8	NonDorm	Control	2	0	0	0	0
L_5	7	Dormant	HH	1	27	32	0.236842105	0.280701754
L_5	7	Dormant	HH	2	0	0	0	0
L_5	7	NonDorm	HH	1	0	0	0	0
L_5	7	NonDorm	HH	2	0	0	0	0
M_10	8	Dormant	HH	1	40	51	0.350877193	0.447368421
M_10	8	Dormant	HH	2	0	1	0	0.00877193
M_10	8	NonDorm	HH	1	28	38	0.245614035	0.333333333
M_10	8	NonDorm	HH	2	0	0	0	0
M_3	7	Dormant	Control	1	28	31	0.245614035	0.271929825
M_3	7	Dormant	Control	2	0	1	0	0.00877193
M_3	7	NonDorm	Control	1	31	33	0.271929825	0.289473684
M_3	7	NonDorm	Control	2	0	0	0	0
M_7	7	Dormant	Soil	1	8	8	0.070175439	0.070175439
M_7	7	Dormant	Soil	2	0	0	0	0
M_7	7	NonDorm	Soil	1	7	9	0.061403509	0.078947368
M_7	7	NonDorm	Soil	2	0	0	0	0
;
proc univariate plot normal;
	var confprop maxprop;

/*full models*
proc GLIMMIX;
	class dorm envt block;
	model conftotal/planted = dorm envt dorm*envt;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm envt block;
	model maxtotal/planted = dorm envt dorm*envt;
	random intercept / subject=block;

/*ind models*/
proc GLIMMIX;
	class dorm block;
	model conftotal/planted = dorm;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm block;
	model maxtotal/planted = dorm;
	random intercept / subject=block;

run;
quit;


data sbpotsgerm_updatey2;
input popid $ block $ dorm $ envt $ year $ conftotal maxtotal confprop maxprop;
planted = 114;
if year NE '2' then delete;
/*ind tests:*/
if envt NE 'Soil' then delete;
title 'SB Germ Props - Year 2';
datalines;
A_13	3	Dormant	Soil	1	12	18	0.105263158	0.157894737
A_13	3	Dormant	Soil	2	0	0	0	0
A_13	3	NonDorm	Soil	1	1	5	0.00877193	0.043859649
A_13	3	NonDorm	Soil	2	0	0	0	0
A_6	2	Dormant	Control	1	15	26	0.131578947	0.228070175
A_6	2	Dormant	Control	2	0	0	0	0
A_6	2	NonDorm	Control	1	41	47	0.359649123	0.412280702
A_6	2	NonDorm	Control	2	0	0	0	0
B/C_3.5	1	Dormant	Soil	1	7	7	0.061403509	0.061403509
B/C_3.5	1	Dormant	Soil	2	1	1	0.00877193	0.00877193
B/C_3.5	1	NonDorm	Soil	1	0	0	0	0
B/C_3.5	1	NonDorm	Soil	2	0	0	0	0
C_0	1	Dormant	Control	1	17	21	0.149122807	0.184210526
C_0	1	Dormant	Control	2	0	0	0	0
C_0	1	NonDorm	Control	1	9	12	0.078947368	0.105263158
C_0	1	NonDorm	Control	2	0	1	0	0.00877193
C_11	3	Dormant	Control	1	33	42	0.289473684	0.368421053
C_11	3	Dormant	Control	2	0	1	0	0.00877193
C_11	3	NonDorm	Control	1	19	21	0.166666667	0.184210526
C_11	3	NonDorm	Control	2	0	0	0	0
C_4	1	Dormant	HH	1	43	53	0.377192982	0.464912281
C_4	1	Dormant	HH	2	0	0	0	0
C_4	1	NonDorm	HH	1	6	7	0.052631579	0.061403509
C_4	1	NonDorm	HH	2	0	0	0	0
C_8	2	Dormant	Soil	1	2	5	0.01754386	0.043859649
C_8	2	Dormant	Soil	2	0	0	0	0
C_8	2	NonDorm	Soil	1	0	0	0	0
C_8	2	NonDorm	Soil	2	0	0	0	0
D_12	3	Dormant	HH	1	28	46	0.245614035	0.403508772
D_12	3	Dormant	HH	2	0	0	0	0
D_12	3	NonDorm	HH	1	18	23	0.157894737	0.201754386
D_12	3	NonDorm	HH	2	2	2	0.01754386	0.01754386
E_4	4	Dormant	Control	1	45	68	0.394736842	0.596491228
E_4	4	Dormant	Control	2	0	3	0	0.026315789
E_4	4	NonDorm	Control	1	6	9	0.052631579	0.078947368
E_4	4	NonDorm	Control	2	0	0	0	0
E_5	2	Dormant	HH	1	33	43	0.289473684	0.377192982
E_5	2	Dormant	HH	2	7	7	0.061403509	0.061403509
E_5	2	NonDorm	HH	1	26	29	0.228070175	0.254385965
E_5	2	NonDorm	HH	2	0	0	0	0
F_13	6	Dormant	Control	1	34	57	0.298245614	0.5
F_13	6	Dormant	Control	2	0	0	0	0
F_13	6	NonDorm	Control	1	17	26	0.149122807	0.228070175
F_13	6	NonDorm	Control	2	0	2	0	0.01754386
G/H_2.5	4	Dormant	Soil	1	2	13	0.01754386	0.114035088
G/H_2.5	4	Dormant	Soil	2	5	6	0.043859649	0.052631579
G/H_2.5	4	NonDorm	Soil	1	0	7	0	0.061403509
G/H_2.5	4	NonDorm	Soil	2	1	1	0.00877193	0.00877193
G_13	6	Dormant	HH	1	44	61	0.385964912	0.535087719
G_13	6	Dormant	HH	2	0	0	0	0
G_13	6	NonDorm	HH	1	14	18	0.122807018	0.157894737
G_13	6	NonDorm	HH	2	1	1	0.00877193	0.00877193
H_13	6	Dormant	Soil	1	9	12	0.078947368	0.105263158
H_13	6	Dormant	Soil	2	0	0	0	0
H_13	6	NonDorm	Soil	1	0	4	0	0.035087719
H_13	6	NonDorm	Soil	2	0	0	0	0
H_4	4	Dormant	HH	1	38	48	0.333333333	0.421052632
H_4	4	Dormant	HH	2	10	10	0.087719298	0.087719298
H_4	4	NonDorm	HH	1	16	23	0.140350877	0.201754386
H_4	4	NonDorm	HH	2	0	0	0	0
I_6	5	Dormant	Control	1	30	40	0.263157895	0.350877193
I_6	5	Dormant	Control	2	0	0	0	0
I_6	5	NonDorm	Control	1	57	63	0.5	0.552631579
I_6	5	NonDorm	Control	2	0	0	0	0
I_8	5	Dormant	HH	1	39	48	0.342105263	0.421052632
I_8	5	Dormant	HH	2	2	2	0.01754386	0.01754386
I_8	5	NonDorm	HH	1	64	65	0.561403509	0.570175439
I_8	5	NonDorm	HH	2	0	0	0	0
J/K_6.5	5	Dormant	Soil	1	14	14	0.122807018	0.122807018
J/K_6.5	5	Dormant	Soil	2	0	0	0	0
J/K_6.5	5	NonDorm	Soil	1	4	6	0.035087719	0.052631579
J/K_6.5	5	NonDorm	Soil	2	1	1	0.00877193	0.00877193
J_13	8	Dormant	Soil	1	4	6	0.035087719	0.052631579
J_13	8	Dormant	Soil	2	1	1	0.00877193	0.00877193
J_13	8	NonDorm	Soil	1	0	0	0	0
J_13	8	NonDorm	Soil	2	0	0	0	0
K_9	8	Dormant	Control	1	29	34	0.254385965	0.298245614
K_9	8	Dormant	Control	2	1	1	0.00877193	0.00877193
K_9	8	NonDorm	Control	1	53	55	0.464912281	0.48245614
K_9	8	NonDorm	Control	2	0	0	0	0
L_5	7	Dormant	HH	1	27	32	0.236842105	0.280701754
L_5	7	Dormant	HH	2	0	0	0	0
L_5	7	NonDorm	HH	1	0	0	0	0
L_5	7	NonDorm	HH	2	0	0	0	0
M_10	8	Dormant	HH	1	40	51	0.350877193	0.447368421
M_10	8	Dormant	HH	2	0	1	0	0.00877193
M_10	8	NonDorm	HH	1	28	38	0.245614035	0.333333333
M_10	8	NonDorm	HH	2	0	0	0	0
M_3	7	Dormant	Control	1	28	31	0.245614035	0.271929825
M_3	7	Dormant	Control	2	0	1	0	0.00877193
M_3	7	NonDorm	Control	1	31	33	0.271929825	0.289473684
M_3	7	NonDorm	Control	2	0	0	0	0
M_7	7	Dormant	Soil	1	8	8	0.070175439	0.070175439
M_7	7	Dormant	Soil	2	0	0	0	0
M_7	7	NonDorm	Soil	1	7	9	0.061403509	0.078947368
M_7	7	NonDorm	Soil	2	0	0	0	0
;
proc univariate plot normal;
	var confprop maxprop;

/*full models*
proc GLIMMIX;
	class dorm envt block;
	model conftotal/planted = dorm envt dorm*envt;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm envt block;
	model maxtotal/planted = dorm envt dorm*envt;
	random intercept / subject=block;

/*ind models*/
proc GLIMMIX;
	class dorm block;
	model conftotal/planted = dorm;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm block;
	model maxtotal/planted = dorm;
	random intercept / subject=block;
	
run;
quit;
