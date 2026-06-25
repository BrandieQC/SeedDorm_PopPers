data sbseedmort;
input popid $ block $ dorm $ envt $ conftotal maxtotal confdead maxdead confmort maxmort;
planted = 114;
/*ind tests:
if envt NE 'Soil' then delete;*/
title 'SB Seed Mortality';
datalines;
A_13	3	Dormant	Soil	12	18	102	96	0.894736842	0.842105263
A_13	3	NonDorm	Soil	1	5	113	109	0.99122807	0.956140351
A_6	2	Dormant	Control	15	26	99	88	0.868421053	0.771929825
A_6	2	NonDorm	Control	41	47	73	67	0.640350877	0.587719298
B/C_3.5	1	Dormant	Soil	8	8	106	106	0.929824561	0.929824561
B/C_3.5	1	NonDorm	Soil	0	0	114	114	1	1
C_0	1	Dormant	Control	17	21	97	93	0.850877193	0.815789474
C_0	1	NonDorm	Control	9	13	105	101	0.921052632	0.885964912
C_11	3	Dormant	Control	33	43	81	71	0.710526316	0.622807018
C_11	3	NonDorm	Control	19	21	95	93	0.833333333	0.815789474
C_4	1	Dormant	HH	43	53	71	61	0.622807018	0.535087719
C_4	1	NonDorm	HH	6	7	108	107	0.947368421	0.938596491
C_8	2	Dormant	Soil	2	5	112	109	0.98245614	0.956140351
C_8	2	NonDorm	Soil	0	0	114	114	1	1
D_12	3	Dormant	HH	28	46	86	68	0.754385965	0.596491228
D_12	3	NonDorm	HH	20	25	94	89	0.824561404	0.780701754
E_4	4	Dormant	Control	45	71	69	43	0.605263158	0.377192982
E_4	4	NonDorm	Control	6	9	108	105	0.947368421	0.921052632
E_5	2	Dormant	HH	40	50	74	64	0.649122807	0.561403509
E_5	2	NonDorm	HH	26	29	88	85	0.771929825	0.745614035
F_13	6	Dormant	Control	34	57	80	57	0.701754386	0.5
F_13	6	NonDorm	Control	17	28	97	86	0.850877193	0.754385965
G_13	6	Dormant	HH	44	61	70	53	0.614035088	0.464912281
G_13	6	NonDorm	HH	15	19	99	95	0.868421053	0.833333333
G/H_2.5	4	Dormant	Soil	7	19	107	95	0.938596491	0.833333333
G/H_2.5	4	NonDorm	Soil	1	8	113	106	0.99122807	0.929824561
H_13	6	Dormant	Soil	9	12	105	102	0.921052632	0.894736842
H_13	6	NonDorm	Soil	0	4	114	110	1	0.964912281
H_4	4	Dormant	HH	48	58	66	56	0.578947368	0.49122807
H_4	4	NonDorm	HH	16	23	98	91	0.859649123	0.798245614
I_6	5	Dormant	Control	30	40	84	74	0.736842105	0.649122807
I_6	5	NonDorm	Control	57	63	57	51	0.5	0.447368421
I_8	5	Dormant	HH	41	50	73	64	0.640350877	0.561403509
I_8	5	NonDorm	HH	64	65	50	49	0.438596491	0.429824561
J_13	8	Dormant	Soil	5	7	109	107	0.956140351	0.938596491
J_13	8	NonDorm	Soil	0	0	114	114	1	1
J/K_6.5	5	Dormant	Soil	14	14	100	100	0.877192982	0.877192982
J/K_6.5	5	NonDorm	Soil	5	7	109	107	0.956140351	0.938596491
K_9	8	Dormant	Control	30	35	84	79	0.736842105	0.692982456
K_9	8	NonDorm	Control	53	55	61	59	0.535087719	0.51754386
L_5	7	Dormant	HH	27	32	87	82	0.763157895	0.719298246
L_5	7	NonDorm	HH	0	0	114	114	1	1
M_10	8	Dormant	HH	40	52	74	62	0.649122807	0.543859649
M_10	8	NonDorm	HH	28	38	86	76	0.754385965	0.666666667
M_3	7	Dormant	Control	28	32	86	82	0.754385965	0.719298246
M_3	7	NonDorm	Control	31	33	83	81	0.728070175	0.710526316
M_7	7	Dormant	Soil	8	8	106	106	0.929824561	0.929824561
M_7	7	NonDorm	Soil	7	9	107	105	0.938596491	0.921052632
;
proc univariate plot normal;
	var confmort maxmort;
/*full models*
proc GLIMMIX;
	class dorm envt block;
	model confdead/planted = dorm envt dorm*envt;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm envt block;
	model maxdead/planted = dorm envt dorm*envt;
	random intercept / subject=block;

/*ind models*/
proc GLIMMIX;
	class dorm block;
	model confdead/planted = dorm;
	random intercept / subject=block;

proc GLIMMIX;
	class dorm block;
	model maxdead/planted = dorm;
	random intercept / subject=block;
run;
quit;
