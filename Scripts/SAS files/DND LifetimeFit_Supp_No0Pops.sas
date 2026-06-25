/*Mult Tests for Surv to Rep*/
data multtest;
input test $ Raw_P;
datalines;
dndCTRLt1	0.0001
dndCTRLt2	0.0001
dmCTRLt1	0.0193
dmCTRLt2	0.0193
ndmCTRLt1	0.0001
ndmCTRLt2	0.0661
;
proc multtest inpvalues=multtest holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndHHt1	0.0456
dndHHt2 0.2361
dmHHt1	0.2189
dmHHt2	0.0048
ndmHHt1	0.0016
ndmHHt2	0.0006
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndNSt1	0.1407
dndNSt2 0.0911
dmNSt1	0.9768
dmNSt2	0.0125
ndmNSt1	0.1507
ndmNSt2	0.0001
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndSLt1	0.1325
dndSLt2 0.0010
dmSLt1	0.1035
ndmSLt1	0.9564
ndmSLt2	0.0026
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit; 

/*
data lifetimefitsupp;
input year $ block $ newblock $ popid $ RIL $ dorm $ envt $ individ $ band $ fruits;
/*if year = '2' then delete; /*for per cap rep ANOVA*
sfruits = sqrt(fruits+1);
lfruits = log(fruits+1);
llfruits = log10(fruits+1);
if fruits = 0 then probfruits=0; else probfruits=1; /*surv to rep*
if fruits = 0 then reponly = .; else reponly = fruits; /*per cap rep*
sreponly = sqrt(reponly+1);
lreponly = log(reponly+1);
llreponly = log10(reponly+1);
/*for ind tests*
if envt NE 'Litter' then delete;
if dorm = 'Dormant' then delete;
if year NE '2' then delete;
/*
if dorm NE 'Dormant' then delete;*
title 'Lifetime Fitness Supplemented (Indiv)';
/*removed K12 year 1, A5 year 2 since only 1 individual*
/*removed C9, J4, M1, and M12 year 1 because missed the fruit count of the rep individuals*
/*added 0s in for 5 F9 indivs that did not reproduce*
datalines;
1	1	1	A_0	IS	Dormant	Litter	2	OC	3
1	1	1	A_0	IS	Dormant	Litter	11	IC	3
1	1	1	A_0	IS	Dormant	Litter	14	OC	5
1	1	1	A_0	IS	Dormant	Litter	16	OC	5
1	1	1	A_0	IS	Dormant	Litter	4	OC	6
1	1	1	A_0	IS	Dormant	Litter	15	OC	7
1	1	1	A_0	IS	Dormant	Litter	17	OC	8
1	1	1	A_0	IS	Dormant	Litter	1	IC	9
1	1	1	A_0	IS	Dormant	Litter	13	OC	10
1	1	1	A_0	IS	Dormant	Litter	9	OC	11
1	1	1	A_0	IS	Dormant	Litter	12	OC	11
1	1	1	A_0	IS	Dormant	Litter	18	OC	14
1	1	1	A_0	IS	Dormant	Litter	8	OC	17
1	1	1	A_0	IS	Dormant	Litter	3	OC	20
1	1	1	A_0	IS	Dormant	Litter	10	OC	38
1	1	1	A_0	IS	Dormant	Litter	6	OC	39
1	1	1	A_0	IS	Dormant	Litter	7	OC	47
1	1	1	A_0	IS	Dormant	Litter	5	OC	71
2	1	1	A_0	IS	Dormant	Litter	0	unmarked	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
2	1	1	A_0	IS	Dormant	Litter	.	.	0
1	1	1	A_3	IS	NonDorm	Litter	3	OC	2
1	1	1	A_3	IS	NonDorm	Litter	4	OC	2
1	1	1	A_3	IS	NonDorm	Litter	2	OC	3
1	1	1	A_3	IS	NonDorm	Litter	5	OC	3
1	1	1	A_3	IS	NonDorm	Litter	6	OC	3
1	1	1	A_3	IS	NonDorm	Litter	8	OC	3
1	1	1	A_3	IS	NonDorm	Litter	1	OC	4
1	1	1	A_3	IS	NonDorm	Litter	7	OC	6
1	2	1	A_5	IS	Mixed	Litter	1	green	0
1	2	1	A_5	IS	Mixed	Litter	2	IC	2
1	2	1	A_5	IS	Mixed	Litter	3	OC	4
1	2	1	A_5	IS	Mixed	Litter	13	OC	5
1	2	1	A_5	IS	Mixed	Litter	19	OC	5
1	2	1	A_5	IS	Mixed	Litter	5	OC	6
1	2	1	A_5	IS	Mixed	Litter	4	OC	7
1	2	1	A_5	IS	Mixed	Litter	11	OC	7
1	2	1	A_5	IS	Mixed	Litter	9	OC	8
1	2	1	A_5	IS	Mixed	Litter	12	OC	9
1	2	1	A_5	IS	Mixed	Litter	17	OC	9
1	2	1	A_5	IS	Mixed	Litter	18	OC	10
1	2	1	A_5	IS	Mixed	Litter	8	OC	11
1	2	1	A_5	IS	Mixed	Litter	10	OC	15
1	2	1	A_5	IS	Mixed	Litter	6	OC	17
1	2	1	A_5	IS	Mixed	Litter	15	OC	23
1	2	1	A_5	IS	Mixed	Litter	16	OC	28
1	2	1	A_5	IS	Mixed	Litter	14	OC	31
1	2	1	A_5	IS	Mixed	Litter	7	OC	103
1	2	1	A_7	IS	Mixed	Soil	13	orange-blue	0
1	2	1	A_7	IS	Mixed	Soil	16	blue-purple	2
1	2	1	A_7	IS	Mixed	Soil	18	yellow-pink	3
1	2	1	A_7	IS	Mixed	Soil	10	green-pink	5
1	2	1	A_7	IS	Mixed	Soil	11	purple-pink	6
1	2	1	A_7	IS	Mixed	Soil	12	purple-green	6
1	2	1	A_7	IS	Mixed	Soil	14	green-orange	6
1	2	1	A_7	IS	Mixed	Soil	17	yellow-purple	8
1	2	1	A_7	IS	Mixed	Soil	8	yellow-green	9
1	2	1	A_7	IS	Mixed	Soil	1	green	10
1	2	1	A_7	IS	Mixed	Soil	5	yellow	13
1	2	1	A_7	IS	Mixed	Soil	3	blue	16
1	2	1	A_7	IS	Mixed	Soil	4	purple	17
1	2	1	A_7	IS	Mixed	Soil	2	orange	22
1	2	1	A_7	IS	Mixed	Soil	6	pink	22
1	2	1	A_7	IS	Mixed	Soil	7	yellow-blue	23
1	2	1	A_7	IS	Mixed	Soil	9	orange-purple	29
1	2	1	A_7	IS	Mixed	Soil	15	blue-pink	56
1	2	1	A_7	IS	Mixed	Soil	19	OC	80
1	2	1	A_7	IS	Mixed	Soil	20	OC	109
2	2	1	A_7	IS	Mixed	Soil	1	pink	2
2	2	1	A_7	IS	Mixed	Soil	6	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	12	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	13	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	16	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	17	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	19	unmarked	2
2	2	1	A_7	IS	Mixed	Soil	8	unmarked	3
2	2	1	A_7	IS	Mixed	Soil	9	unmarked	3
2	2	1	A_7	IS	Mixed	Soil	14	unmarked	3
2	2	1	A_7	IS	Mixed	Soil	20	unmarked	3
2	2	1	A_7	IS	Mixed	Soil	7	unmarked	4
2	2	1	A_7	IS	Mixed	Soil	18	unmarked	4
2	2	1	A_7	IS	Mixed	Soil	5	unmarked	7
2	2	1	A_7	IS	Mixed	Soil	10	unmarked	7
2	2	1	A_7	IS	Mixed	Soil	11	unmarked	7
2	2	1	A_7	IS	Mixed	Soil	15	unmarked	9
2	2	1	A_7	IS	Mixed	Soil	4	blue	13
2	2	1	A_7	IS	Mixed	Soil	2	orange	19
2	2	1	A_7	IS	Mixed	Soil	3	purple	27
1	3	1	A_9	IS	Dormant	Soil	3	orange	0
1	3	1	A_9	IS	Dormant	Soil	9	IC	4
1	3	1	A_9	IS	Dormant	Soil	15	IC	5
1	3	1	A_9	IS	Dormant	Soil	4	green	6
1	3	1	A_9	IS	Dormant	Soil	18	IC	6
1	3	1	A_9	IS	Dormant	Soil	12	IC	8
1	3	1	A_9	IS	Dormant	Soil	8	IC	13
1	3	1	A_9	IS	Dormant	Soil	10	IC	14
1	3	1	A_9	IS	Dormant	Soil	14	IC	14
1	3	1	A_9	IS	Dormant	Soil	6	blue	18
1	3	1	A_9	IS	Dormant	Soil	17	IC	18
1	3	1	A_9	IS	Dormant	Soil	13	IC	22
1	3	1	A_9	IS	Dormant	Soil	16	IC	25
1	3	1	A_9	IS	Dormant	Soil	19	IC	28
1	3	1	A_9	IS	Dormant	Soil	5	purple	70
1	3	1	A_9	IS	Dormant	Soil	7	IC	94
1	3	1	A_9	IS	Dormant	Soil	11	IC	110
1	3	1	A_9	IS	Dormant	Soil	20	OC	188
1	3	1	A_9	IS	Dormant	Soil	2	yellow	362
1	3	1	A_9	IS	Dormant	Soil	1	pink	516
2	3	1	A_9	IS	Dormant	Soil	2.1	pink	0
2	3	1	A_9	IS	Dormant	Soil	3	blue	0
2	3	1	A_9	IS	Dormant	Soil	6	yellow	0
2	3	1	A_9	IS	Dormant	Soil	7	purple-pink	0
2	3	1	A_9	IS	Dormant	Soil	8	purple-blue	0
2	3	1	A_9	IS	Dormant	Soil	9	purple-green	0
2	3	1	A_9	IS	Dormant	Soil	1	purple	1
2	3	1	A_9	IS	Dormant	Soil	14	pink-yellow	1
2	3	1	A_9	IS	Dormant	Soil	15	orange-blue	2
2	3	1	A_9	IS	Dormant	Soil	2	pink	3
2	3	1	A_9	IS	Dormant	Soil	4	green	3
2	3	1	A_9	IS	Dormant	Soil	18	unmarked	3
2	3	1	A_9	IS	Dormant	Soil	17	blue-green	4
2	3	1	A_9	IS	Dormant	Soil	12	pink-blue	5
2	3	1	A_9	IS	Dormant	Soil	13	pink-green	6
2	3	1	A_9	IS	Dormant	Soil	5	orange	7
2	3	1	A_9	IS	Dormant	Soil	19	unmarked	7
2	3	1	A_9	IS	Dormant	Soil	20	unmarked	11
2	3	1	A_9	IS	Dormant	Soil	10	purple-orange	13
2	3	1	A_9	IS	Dormant	Soil	11	purple-yellow	13
1	3	1	A_10	IS	NonDorm	Litter	2	blue	0
1	3	1	A_10	IS	NonDorm	Litter	.	.	0
1	3	1	A_10	IS	NonDorm	Litter	.	.	0
1	3	1	A_10	IS	NonDorm	Litter	.	.	0
1	1	1	B_2	IS	NonDorm	HH	10	IC	1
1	1	1	B_2	IS	NonDorm	HH	11	IC	1
1	1	1	B_2	IS	NonDorm	HH	1	IC	2
1	1	1	B_2	IS	NonDorm	HH	9	IC	2
1	1	1	B_2	IS	NonDorm	HH	2	IC	3
1	1	1	B_2	IS	NonDorm	HH	5	IC	3
1	1	1	B_2	IS	NonDorm	HH	8	IC	3
1	1	1	B_2	IS	NonDorm	HH	3	IC	4
1	1	1	B_2	IS	NonDorm	HH	4	IC	6
1	1	1	B_2	IS	NonDorm	HH	6	IC	9
1	1	1	B_2	IS	NonDorm	HH	12	IC	10
1	1	1	B_2	IS	NonDorm	HH	7	IC	15
1	1	1	B_2	IS	NonDorm	HH	14	IC	16
1	1	1	B_2	IS	NonDorm	HH	20	OC	16
1	1	1	B_2	IS	NonDorm	HH	17	OC	19
1	1	1	B_2	IS	NonDorm	HH	13	IC	21
1	1	1	B_2	IS	NonDorm	HH	18	OC	42
1	1	1	B_2	IS	NonDorm	HH	16	OC	87
1	1	1	B_2	IS	NonDorm	HH	19	OC	129
1	1	1	B_2	IS	NonDorm	HH	15	OC	214
1	2	1	B_6	IS	NonDorm	HH	1.1	orange	0
1	2	1	B_6	IS	NonDorm	HH	2	purple	0
1	2	1	B_6	IS	NonDorm	HH	4	green	0
1	2	1	B_6	IS	NonDorm	HH	5.1	blue	0
1	2	1	B_6	IS	NonDorm	HH	1	orange	2
1	2	1	B_6	IS	NonDorm	HH	19	OC	5
1	2	1	B_6	IS	NonDorm	HH	9	blue-yellow	11
1	2	1	B_6	IS	NonDorm	HH	6	purple-pink	12
1	2	1	B_6	IS	NonDorm	HH	17	OC	15
1	2	1	B_6	IS	NonDorm	HH	3	pink	19
1	2	1	B_6	IS	NonDorm	HH	15	OC	27
1	2	1	B_6	IS	NonDorm	HH	14	OC	31
1	2	1	B_6	IS	NonDorm	HH	11	IC	35
1	2	1	B_6	IS	NonDorm	HH	16	OC	47
1	2	1	B_6	IS	NonDorm	HH	20	OC	76
1	2	1	B_6	IS	NonDorm	HH	7	orange-pink	81
1	2	1	B_6	IS	NonDorm	HH	5	blue	84
1	2	1	B_6	IS	NonDorm	HH	18	OC	142
1	2	1	B_6	IS	NonDorm	HH	10	IC	261
1	2	1	B_6	IS	NonDorm	HH	12	OC	291
1	2	1	B_6	IS	NonDorm	HH	13	OC	713
2	2	1	B_6	IS	NonDorm	HH	1	blue	0
2	2	1	B_6	IS	NonDorm	HH	3.1	orange	0
2	2	1	B_6	IS	NonDorm	HH	3.2	orange	0
2	2	1	B_6	IS	NonDorm	HH	4.1	yellow	0
2	2	1	B_6	IS	NonDorm	HH	5.1	green	0
2	2	1	B_6	IS	NonDorm	HH	7	yellow-pink	0
2	2	1	B_6	IS	NonDorm	HH	8	yellow-orange	0
2	2	1	B_6	IS	NonDorm	HH	13	unmarked	1
2	2	1	B_6	IS	NonDorm	HH	4	yellow	2
2	2	1	B_6	IS	NonDorm	HH	12	unmarked	2
2	2	1	B_6	IS	NonDorm	HH	14	unmarked	2
2	2	1	B_6	IS	NonDorm	HH	6	purple	3
2	2	1	B_6	IS	NonDorm	HH	3	orange	4
2	2	1	B_6	IS	NonDorm	HH	11	unmarked	5
2	2	1	B_6	IS	NonDorm	HH	15	unmarked	8
2	2	1	B_6	IS	NonDorm	HH	9	purple-green	9
2	2	1	B_6	IS	NonDorm	HH	10	purple-blue	9
2	2	1	B_6	IS	NonDorm	HH	2	pink	11
1	2	1	B_7	IS	Mixed	Control	3.1	green	0
1	2	1	B_7	IS	Mixed	Control	9	IC	5
1	2	1	B_7	IS	Mixed	Control	11	OC	9
1	2	1	B_7	IS	Mixed	Control	15	OC	9
1	2	1	B_7	IS	Mixed	Control	7	IC	10
1	2	1	B_7	IS	Mixed	Control	6	pink	13
1	2	1	B_7	IS	Mixed	Control	12	OC	14
1	2	1	B_7	IS	Mixed	Control	10	OC	18
1	2	1	B_7	IS	Mixed	Control	4	orange	20
1	2	1	B_7	IS	Mixed	Control	13	OC	26
1	2	1	B_7	IS	Mixed	Control	14	OC	29
1	2	1	B_7	IS	Mixed	Control	5	purple	53
1	2	1	B_7	IS	Mixed	Control	3	green	64
1	2	1	B_7	IS	Mixed	Control	1	yellow	65
1	2	1	B_7	IS	Mixed	Control	18	OC	71
1	2	1	B_7	IS	Mixed	Control	20	OC	76
1	2	1	B_7	IS	Mixed	Control	16	OC	85
1	2	1	B_7	IS	Mixed	Control	19	OC	92
1	2	1	B_7	IS	Mixed	Control	8	IC	105
1	2	1	B_7	IS	Mixed	Control	17	OC	129
1	2	1	B_7	IS	Mixed	Control	2	blue	137
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	.	.	0
2	2	1	B_7	IS	Mixed	Control	3	unmarked	4
2	2	1	B_7	IS	Mixed	Control	2	unmarked	5
2	2	1	B_7	IS	Mixed	Control	1	unmarked	13
1	3	1	B_11	IS	NonDorm	Soil	2	yellow	2
1	3	1	B_11	IS	NonDorm	Soil	4	pink	2
1	3	1	B_11	IS	NonDorm	Soil	9	IC	4
1	3	1	B_11	IS	NonDorm	Soil	11	IC	4
1	3	1	B_11	IS	NonDorm	Soil	13	IC	4
1	3	1	B_11	IS	NonDorm	Soil	10	IC	5
1	3	1	B_11	IS	NonDorm	Soil	8	IC	7
1	3	1	B_11	IS	NonDorm	Soil	3	purple	8
1	3	1	B_11	IS	NonDorm	Soil	7	IC	8
1	3	1	B_11	IS	NonDorm	Soil	6	IC	10
1	3	1	B_11	IS	NonDorm	Soil	15	IC	10
1	3	1	B_11	IS	NonDorm	Soil	1	green	12
1	3	1	B_11	IS	NonDorm	Soil	12	IC	14
1	3	1	B_11	IS	NonDorm	Soil	16	IC	16
1	3	1	B_11	IS	NonDorm	Soil	17	OC	17
1	3	1	B_11	IS	NonDorm	Soil	5	IC	27
1	3	1	B_11	IS	NonDorm	Soil	19	OC	33
1	3	1	B_11	IS	NonDorm	Soil	20	OC	51
1	3	1	B_11	IS	NonDorm	Soil	14	IC	53
1	3	1	B_11	IS	NonDorm	Soil	18	OC	79
2	3	1	B_11	IS	NonDorm	Soil	.	.	0
2	3	1	B_11	IS	NonDorm	Soil	.	.	0
1	3	1	B_12	IS	Mixed	Soil	1	blue	0
1	3	1	B_12	IS	Mixed	Soil	2.1	green	0
1	3	1	B_12	IS	Mixed	Soil	8	IC	3
1	3	1	B_12	IS	Mixed	Soil	11	IC	3
1	3	1	B_12	IS	Mixed	Soil	2	green	4
1	3	1	B_12	IS	Mixed	Soil	5	yellow	4
1	3	1	B_12	IS	Mixed	Soil	6	IC	5
1	3	1	B_12	IS	Mixed	Soil	10	IC	5
1	3	1	B_12	IS	Mixed	Soil	19	IC	5
1	3	1	B_12	IS	Mixed	Soil	7	IC	7
1	3	1	B_12	IS	Mixed	Soil	18	IC	7
1	3	1	B_12	IS	Mixed	Soil	3	purple	8
1	3	1	B_12	IS	Mixed	Soil	13	IC	8
1	3	1	B_12	IS	Mixed	Soil	15	IC	9
1	3	1	B_12	IS	Mixed	Soil	9	IC	11
1	3	1	B_12	IS	Mixed	Soil	16	IC	15
1	3	1	B_12	IS	Mixed	Soil	17	IC	16
1	3	1	B_12	IS	Mixed	Soil	12	IC	23
1	3	1	B_12	IS	Mixed	Soil	14	IC	45
1	3	1	B_12	IS	Mixed	Soil	20	OC	62
2	3	1	B_12	IS	Mixed	Soil	.	.	0
2	3	1	B_12	IS	Mixed	Soil	.	.	0
1	1	1	C_2	IS	NonDorm	Control	1	OC	11
1	1	1	C_2	IS	NonDorm	Control	4	OC	19
1	1	1	C_2	IS	NonDorm	Control	2	OC	23
1	1	1	C_2	IS	NonDorm	Control	3	OC	31
1	2	1	C_7	IS	Dormant	Control	6	OC	2
1	2	1	C_7	IS	Dormant	Control	5	OC	3
1	2	1	C_7	IS	Dormant	Control	7	OC	3
1	2	1	C_7	IS	Dormant	Control	11	OC	3
1	2	1	C_7	IS	Dormant	Control	2	OC	4
1	2	1	C_7	IS	Dormant	Control	4	OC	4
1	2	1	C_7	IS	Dormant	Control	12	OC	4
1	2	1	C_7	IS	Dormant	Control	16	OC	4
1	2	1	C_7	IS	Dormant	Control	3	OC	5
1	2	1	C_7	IS	Dormant	Control	8	OC	5
1	2	1	C_7	IS	Dormant	Control	18	OC	5
1	2	1	C_7	IS	Dormant	Control	9	OC	6
1	2	1	C_7	IS	Dormant	Control	17	OC	6
1	2	1	C_7	IS	Dormant	Control	10	OC	7
1	2	1	C_7	IS	Dormant	Control	1	OC	9
1	2	1	C_7	IS	Dormant	Control	13	OC	11
1	2	1	C_7	IS	Dormant	Control	14	OC	17
1	2	1	C_7	IS	Dormant	Control	20	OC	35
1	2	1	C_7	IS	Dormant	Control	15	OC	41
1	2	1	C_7	IS	Dormant	Control	19	OC	133
2	2	1	C_7	IS	Dormant	Control	1	purple	0
2	2	1	C_7	IS	Dormant	Control	2	yellow	0
2	2	1	C_7	IS	Dormant	Control	4	orange	0
2	2	1	C_7	IS	Dormant	Control	7	unmarked	3
2	2	1	C_7	IS	Dormant	Control	8	unmarked	3
2	2	1	C_7	IS	Dormant	Control	6	unmarked	5
2	2	1	C_7	IS	Dormant	Control	5	blue	6
2	2	1	C_7	IS	Dormant	Control	3	pink	9
2	2	1	C_7	IS	Dormant	Control	9	unmarked	9
2	2	1	C_7	IS	Dormant	Control	10	unmarked	22
2	3	1	C_9	IS	Mixed	Control	.	.	0
2	3	1	C_9	IS	Mixed	Control	1	unmarked	28
1	3	1	C_10	IS	Dormant	HH	1	purple	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	.	.	0
1	3	1	C_10	IS	Dormant	HH	2	yellow	33
1	3	1	C_10	IS	Dormant	HH	3	OC	71
1	3	1	C_10	IS	Dormant	HH	4	OC	554
2	3	1	C_10	IS	Dormant	HH	1	yellow	0
2	3	1	C_10	IS	Dormant	HH	2	purple 	0
2	3	1	C_10	IS	Dormant	HH	4	pink	0
2	3	1	C_10	IS	Dormant	HH	5	blue	0
2	3	1	C_10	IS	Dormant	HH	8	green-yellow	0
2	3	1	C_10	IS	Dormant	HH	9	orange-yellow	0
2	3	1	C_10	IS	Dormant	HH	10	purple-green	0
2	3	1	C_10	IS	Dormant	HH	18	blue-yellow	1
2	3	1	C_10	IS	Dormant	HH	7	purple-yellow	2
2	3	1	C_10	IS	Dormant	HH	13	orange-purple	2
2	3	1	C_10	IS	Dormant	HH	19	pink-yellow	2
2	3	1	C_10	IS	Dormant	HH	6	green	3
2	3	1	C_10	IS	Dormant	HH	12	orange-blue	4
2	3	1	C_10	IS	Dormant	HH	16	blue-pink	4
2	3	1	C_10	IS	Dormant	HH	20	pink-purple	4
2	3	1	C_10	IS	Dormant	HH	11	orange-green	7
2	3	1	C_10	IS	Dormant	HH	14	orange-pink	7
1	3	1	C_13	IS	Mixed	HH	1	OC	26
1	3	1	C_13	IS	Mixed	HH	2	OC	30
1	3	1	C_13	IS	Mixed	HH	5	OC	31
1	3	1	C_13	IS	Mixed	HH	3	OC	62
1	3	1	C_13	IS	Mixed	HH	4	OC	80
1	2	1	D_5	IS	Mixed	HH	10	IC	3
1	2	1	D_5	IS	Mixed	HH	9	IC	6
1	2	1	D_5	IS	Mixed	HH	18	OC	6
1	2	1	D_5	IS	Mixed	HH	8	IC	24
1	2	1	D_5	IS	Mixed	HH	12	IC	28
1	2	1	D_5	IS	Mixed	HH	1	blue	30
1	2	1	D_5	IS	Mixed	HH	11	IC	30
1	2	1	D_5	IS	Mixed	HH	13	IC	54
1	2	1	D_5	IS	Mixed	HH	14	IC	93
1	2	1	D_5	IS	Mixed	HH	19	OC	114
1	2	1	D_5	IS	Mixed	HH	17	OC	130
1	2	1	D_5	IS	Mixed	HH	15	OC	150
1	2	1	D_5	IS	Mixed	HH	3	green	168
1	2	1	D_5	IS	Mixed	HH	2	orange	183
1	2	1	D_5	IS	Mixed	HH	7	pink	195
1	2	1	D_5	IS	Mixed	HH	4	yellow	240
1	2	1	D_5	IS	Mixed	HH	5	green-red	245
1	2	1	D_5	IS	Mixed	HH	16	OC	732
1	2	1	D_5	IS	Mixed	HH	20	OC	1116
2	2	1	D_5	IS	Mixed	HH	1	yellow	0
2	2	1	D_5	IS	Mixed	HH	2	pink	0
2	2	1	D_5	IS	Mixed	HH	3	orange	0
2	2	1	D_5	IS	Mixed	HH	4	blue	0
2	2	1	D_5	IS	Mixed	HH	6	blue-pink	0
2	2	1	D_5	IS	Mixed	HH	8	purple-yellow	0
2	2	1	D_5	IS	Mixed	HH	9	blue-green	0
2	2	1	D_5	IS	Mixed	HH	10	purple-orange	0
2	2	1	D_5	IS	Mixed	HH	20	unmarked	2
2	2	1	D_5	IS	Mixed	HH	7	purple	3
2	2	1	D_5	IS	Mixed	HH	12	blue-orange	3
2	2	1	D_5	IS	Mixed	HH	15	green-purple	4
2	2	1	D_5	IS	Mixed	HH	16	green-orange	4
2	2	1	D_5	IS	Mixed	HH	13	green-pink	5
2	2	1	D_5	IS	Mixed	HH	19	unmarked	6
2	2	1	D_5	IS	Mixed	HH	17	unmarked	9
2	2	1	D_5	IS	Mixed	HH	18	unmarked	12
2	2	1	D_5	IS	Mixed	HH	14	green-yellow	31
1	2	1	D_6	IS	Dormant	HH	3	pink	3
1	2	1	D_6	IS	Dormant	HH	13	IC	5
1	2	1	D_6	IS	Dormant	HH	5	yellow	10
1	2	1	D_6	IS	Dormant	HH	14	IC	12
1	2	1	D_6	IS	Dormant	HH	9	IC	15
1	2	1	D_6	IS	Dormant	HH	18	OC	18
1	2	1	D_6	IS	Dormant	HH	6	blue	19
1	2	1	D_6	IS	Dormant	HH	10	IC	25
1	2	1	D_6	IS	Dormant	HH	7	IC	29
1	2	1	D_6	IS	Dormant	HH	12	IC	30
1	2	1	D_6	IS	Dormant	HH	1	purple	31
1	2	1	D_6	IS	Dormant	HH	19	OC	38
1	2	1	D_6	IS	Dormant	HH	11	IC	50
1	2	1	D_6	IS	Dormant	HH	2	orange	72
1	2	1	D_6	IS	Dormant	HH	17	OC	105
1	2	1	D_6	IS	Dormant	HH	4	green	127
1	2	1	D_6	IS	Dormant	HH	8	IC	130
1	2	1	D_6	IS	Dormant	HH	20	OC	133
1	2	1	D_6	IS	Dormant	HH	15	IC	213
1	2	1	D_6	IS	Dormant	HH	16	OC	278
2	2	1	D_6	IS	Dormant	HH	1	pink	0
2	2	1	D_6	IS	Dormant	HH	2	yellow	0
2	2	1	D_6	IS	Dormant	HH	3	blue	0
2	2	1	D_6	IS	Dormant	HH	4	purple	0
2	2	1	D_6	IS	Dormant	HH	5	green	0
2	2	1	D_6	IS	Dormant	HH	6	blue-green	0
2	2	1	D_6	IS	Dormant	HH	7.1	green-purple	0
2	2	1	D_6	IS	Dormant	HH	7.2	green-purple	0
2	2	1	D_6	IS	Dormant	HH	8	purple-pink	0
2	2	1	D_6	IS	Dormant	HH	9	blue-pink	0
2	2	1	D_6	IS	Dormant	HH	11.1	green-orange	0
2	2	1	D_6	IS	Dormant	HH	14.1	green-pink	0
2	2	1	D_6	IS	Dormant	HH	14.2	green-pink	0
2	2	1	D_6	IS	Dormant	HH	16	blue-purple	0
2	2	1	D_6	IS	Dormant	HH	18	green-orange	0
2	2	1	D_6	IS	Dormant	HH	11	green-orange	1
2	2	1	D_6	IS	Dormant	HH	12	blue-yellow	2
2	2	1	D_6	IS	Dormant	HH	13	green-yellow	2
2	2	1	D_6	IS	Dormant	HH	15	purple-orange	2
2	2	1	D_6	IS	Dormant	HH	20	yellow-pink	3
2	2	1	D_6	IS	Dormant	HH	23	unmarked	3
2	2	1	D_6	IS	Dormant	HH	10	blue-orange	5
2	2	1	D_6	IS	Dormant	HH	19	yellow-orange	6
2	2	1	D_6	IS	Dormant	HH	17	purple-yellow	9
2	2	1	D_6	IS	Dormant	HH	21	unmarked	21
2	2	1	D_6	IS	Dormant	HH	22	unmarked	27
1	2	1	D_8	IS	NonDorm	Litter	.	.	0
1	2	1	D_8	IS	NonDorm	Litter	.	.	0
1	2	1	D_8	IS	NonDorm	Litter	.	.	0
1	2	1	D_8	IS	NonDorm	Litter	8	OC	7
1	2	1	D_8	IS	NonDorm	Litter	5	OC	9
1	2	1	D_8	IS	NonDorm	Litter	9	OC	10
1	2	1	D_8	IS	NonDorm	Litter	2	pink	18
1	2	1	D_8	IS	NonDorm	Litter	10	OC	45
1	2	1	D_8	IS	NonDorm	Litter	3	OC	55
1	2	1	D_8	IS	NonDorm	Litter	4	OC	61
1	2	1	D_8	IS	NonDorm	Litter	6	OC	112
1	2	1	D_8	IS	NonDorm	Litter	7	OC	176
1	2	1	D_8	IS	NonDorm	Litter	11	OC	242
1	2	1	D_8	IS	NonDorm	Litter	1	blue	322
2	2	1	D_8	IS	NonDorm	Litter	4	orange	0
2	2	1	D_8	IS	NonDorm	Litter	9	unmarked	2
2	2	1	D_8	IS	NonDorm	Litter	15	unmarked	2
2	2	1	D_8	IS	NonDorm	Litter	7	unmarked	3
2	2	1	D_8	IS	NonDorm	Litter	8	unmarked	3
2	2	1	D_8	IS	NonDorm	Litter	5	yellow	4
2	2	1	D_8	IS	NonDorm	Litter	13	unmarked	4
2	2	1	D_8	IS	NonDorm	Litter	14	unmarked	4
2	2	1	D_8	IS	NonDorm	Litter	3	blue	5
2	2	1	D_8	IS	NonDorm	Litter	18	unmarked	5
2	2	1	D_8	IS	NonDorm	Litter	10	unmarked	6
2	2	1	D_8	IS	NonDorm	Litter	12	unmarked	6
2	2	1	D_8	IS	NonDorm	Litter	6	purple	8
2	2	1	D_8	IS	NonDorm	Litter	11	unmarked	8
2	2	1	D_8	IS	NonDorm	Litter	16	unmarked	9
2	2	1	D_8	IS	NonDorm	Litter	1	green	13
2	2	1	D_8	IS	NonDorm	Litter	17	unmarked	22
2	2	1	D_8	IS	NonDorm	Litter	2	pink	51
1	3	1	D_9	IS	NonDorm	Control	1	yellow	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	.	.	0
1	3	1	D_9	IS	NonDorm	Control	3	IC	2
1	3	1	D_9	IS	NonDorm	Control	2	IC	5
1	3	1	D_9	IS	NonDorm	Control	4	OC	110
1	3	1	D_9	IS	NonDorm	Control	6	OC	320
1	3	1	D_9	IS	NonDorm	Control	5	OC	339
2	3	1	D_9	IS	NonDorm	Control	2	pink	0
2	3	1	D_9	IS	NonDorm	Control	3	blue	0
2	3	1	D_9	IS	NonDorm	Control	4	green	0
2	3	1	D_9	IS	NonDorm	Control	5	orange	0
2	3	1	D_9	IS	NonDorm	Control	9	orange-yellow	0
2	3	1	D_9	IS	NonDorm	Control	10	purple-blue	0
2	3	1	D_9	IS	NonDorm	Control	11.1	pink-green	0
2	3	1	D_9	IS	NonDorm	Control	11.2	pink-green	0
2	3	1	D_9	IS	NonDorm	Control	15	purple-green	3
2	3	1	D_9	IS	NonDorm	Control	17	pink-blue	3
2	3	1	D_9	IS	NonDorm	Control	13	orange-blue	4
2	3	1	D_9	IS	NonDorm	Control	14	orange-purple	5
2	3	1	D_9	IS	NonDorm	Control	16	purple-yellow	5
2	3	1	D_9	IS	NonDorm	Control	20	green-orange	5
2	3	1	D_9	IS	NonDorm	Control	12	pink-yellow	8
2	3	1	D_9	IS	NonDorm	Control	19	blue-yellow	8
2	3	1	D_9	IS	NonDorm	Control	7	purple-pink	9
2	3	1	D_9	IS	NonDorm	Control	8	blue-green	13
2	3	1	D_9	IS	NonDorm	Control	18	pink-orange	13
2	3	1	D_9	IS	NonDorm	Control	6	yellow	14
1	3	1	D_10	IS	Mixed	Litter	1	orange	0
1	3	1	D_10	IS	Mixed	Litter	2	blue	0
1	3	1	D_10	IS	Mixed	Litter	.	.	0
1	3	1	D_10	IS	Mixed	Litter	.	.	0
1	3	1	D_10	IS	Mixed	Litter	.	.	0
1	3	1	D_10	IS	Mixed	Litter	.	.	0
1	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
2	3	1	D_10	IS	Mixed	Litter	.	.	0
1	3	1	D_13	IS	Dormant	Control	1	yellow	21
1	3	1	D_13	IS	Dormant	Control	4	OC	22
1	3	1	D_13	IS	Dormant	Control	6	OC	25
1	3	1	D_13	IS	Dormant	Control	7	OC	62
1	3	1	D_13	IS	Dormant	Control	2	OC	80
1	3	1	D_13	IS	Dormant	Control	5	OC	83
1	3	1	D_13	IS	Dormant	Control	3	OC	135
2	3	1	D_13	IS	Dormant	Control	.	.	0
2	3	1	D_13	IS	Dormant	Control	.	.	0
1	4	1	E_1	IS	NonDorm	Soil	10	yellow-blue	3
1	4	1	E_1	IS	NonDorm	Soil	16	IC	4
1	4	1	E_1	IS	NonDorm	Soil	13	IC	6
1	4	1	E_1	IS	NonDorm	Soil	5	green	8
1	4	1	E_1	IS	NonDorm	Soil	6	blue	8
1	4	1	E_1	IS	NonDorm	Soil	4	purple	9
1	4	1	E_1	IS	NonDorm	Soil	18	IC	9
1	4	1	E_1	IS	NonDorm	Soil	20	IC	10
1	4	1	E_1	IS	NonDorm	Soil	7	purple-orange	12
1	4	1	E_1	IS	NonDorm	Soil	14	IC	12
1	4	1	E_1	IS	NonDorm	Soil	19	IC	13
1	4	1	E_1	IS	NonDorm	Soil	12	IC	15
1	4	1	E_1	IS	NonDorm	Soil	2	pink	16
1	4	1	E_1	IS	NonDorm	Soil	17	IC	16
1	4	1	E_1	IS	NonDorm	Soil	15	IC	18
1	4	1	E_1	IS	NonDorm	Soil	1	orange	22
1	4	1	E_1	IS	NonDorm	Soil	3	yellow	22
1	4	1	E_1	IS	NonDorm	Soil	11	IC	24
1	4	1	E_1	IS	NonDorm	Soil	8	purple-pink	27
1	4	1	E_1	IS	NonDorm	Soil	9	green-orange	37
2	4	1	E_1	IS	NonDorm	Soil	4	unmarked	1
2	4	1	E_1	IS	NonDorm	Soil	9	unmarked	1
2	4	1	E_1	IS	NonDorm	Soil	5	unmarked	2
2	4	1	E_1	IS	NonDorm	Soil	7	unmarked	2
2	4	1	E_1	IS	NonDorm	Soil	2	unmarked	3
2	4	1	E_1	IS	NonDorm	Soil	3	unmarked	3
2	4	1	E_1	IS	NonDorm	Soil	8	unmarked	3
2	4	1	E_1	IS	NonDorm	Soil	10	unmarked	6
2	4	1	E_1	IS	NonDorm	Soil	1	unmarked	11
2	4	1	E_1	IS	NonDorm	Soil	6	unmarked	12
1	4	1	E_2	IS	Mixed	Control	1.1	purple	0
1	4	1	E_2	IS	Mixed	Control	1.2	purple	0
1	4	1	E_2	IS	Mixed	Control	2.2	yellow	0
1	4	1	E_2	IS	Mixed	Control	2.3	yellow	0
1	4	1	E_2	IS	Mixed	Control	3.1	blue	0
1	4	1	E_2	IS	Mixed	Control	3.2	blue	0
1	4	1	E_2	IS	Mixed	Control	3	blue	6
1	4	1	E_2	IS	Mixed	Control	15	OC	8
1	4	1	E_2	IS	Mixed	Control	8	OC	9
1	4	1	E_2	IS	Mixed	Control	14	OC	12
1	4	1	E_2	IS	Mixed	Control	13	OC	14
1	4	1	E_2	IS	Mixed	Control	11	OC	25
1	4	1	E_2	IS	Mixed	Control	4	IC	29
1	4	1	E_2	IS	Mixed	Control	6	OC	35
1	4	1	E_2	IS	Mixed	Control	9	OC	57
1	4	1	E_2	IS	Mixed	Control	12	OC	57
1	4	1	E_2	IS	Mixed	Control	16	OC	57
1	4	1	E_2	IS	Mixed	Control	5	IC	93
1	4	1	E_2	IS	Mixed	Control	10	OC	207
1	4	1	E_2	IS	Mixed	Control	7	OC	301
1	4	1	E_2	IS	Mixed	Control	17	OC	438
2	4	1	E_2	IS	Mixed	Control	1	unmarked	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	.	.	0
2	4	1	E_2	IS	Mixed	Control	2	unmarked	1
2	4	1	E_2	IS	Mixed	Control	3	unmarked	3
1	4	1	E_3	IS	NonDorm	Control	1	green	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	.	.	0
1	4	1	E_3	IS	NonDorm	Control	2	IC	279
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
2	4	1	E_3	IS	NonDorm	Control	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_7	IS	Dormant	Litter	1	OC	2
1	2	1	E_7	IS	Dormant	Litter	3	OC	2
1	2	1	E_7	IS	Dormant	Litter	4	OC	2
1	2	1	E_7	IS	Dormant	Litter	2	OC	11
1	2	1	E_7	IS	Dormant	Litter	8	OC	17
1	2	1	E_7	IS	Dormant	Litter	5	OC	18
1	2	1	E_7	IS	Dormant	Litter	7	OC	21
1	2	1	E_7	IS	Dormant	Litter	6	OC	137
1	2	1	E_7	IS	Dormant	Litter	9	OC	159
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
2	2	1	E_7	IS	Dormant	Litter	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
1	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
2	2	1	E_8	IS	NonDorm	Control	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
1	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
2	3	1	E_13	IS	NonDorm	HH	.	.	0
1	4	1	F_3	IS	Dormant	HH	3.1	green	0
1	4	1	F_3	IS	Dormant	HH	4	yellow	0
1	4	1	F_3	IS	Dormant	HH	10	IC	9
1	4	1	F_3	IS	Dormant	HH	2	orange	16
1	4	1	F_3	IS	Dormant	HH	5	blue	21
1	4	1	F_3	IS	Dormant	HH	8	IC	22
1	4	1	F_3	IS	Dormant	HH	14	OC	22
1	4	1	F_3	IS	Dormant	HH	7	IC	28
1	4	1	F_3	IS	Dormant	HH	19	OC	28
1	4	1	F_3	IS	Dormant	HH	17	OC	33
1	4	1	F_3	IS	Dormant	HH	11	IC	35
1	4	1	F_3	IS	Dormant	HH	9	IC	36
1	4	1	F_3	IS	Dormant	HH	18	OC	47
1	4	1	F_3	IS	Dormant	HH	13	OC	50
1	4	1	F_3	IS	Dormant	HH	6	pink	70
1	4	1	F_3	IS	Dormant	HH	12	OC	79
1	4	1	F_3	IS	Dormant	HH	15	OC	153
1	4	1	F_3	IS	Dormant	HH	16	OC	273
1	4	1	F_3	IS	Dormant	HH	1	purple	419
1	4	1	F_3	IS	Dormant	HH	20	OC	1000
2	4	1	F_3	IS	Dormant	HH	1	orange	0
2	4	1	F_3	IS	Dormant	HH	2	yellow	0
2	4	1	F_3	IS	Dormant	HH	3	pink	0
2	4	1	F_3	IS	Dormant	HH	6	green-yellow	0
2	4	1	F_3	IS	Dormant	HH	7	purple-orange	0
2	4	1	F_3	IS	Dormant	HH	9	purple-pink	0
2	4	1	F_3	IS	Dormant	HH	10.2	blue-yellow	0
2	4	1	F_3	IS	Dormant	HH	11	pink-green	0
2	4	1	F_3	IS	Dormant	HH	12	orange-green	0
2	4	1	F_3	IS	Dormant	HH	13	purple-green	0
2	4	1	F_3	IS	Dormant	HH	14	blue-green	0
2	4	1	F_3	IS	Dormant	HH	18	purple	3
2	4	1	F_3	IS	Dormant	HH	15	yellow-orange	4
2	4	1	F_3	IS	Dormant	HH	16	pink-blue	4
2	4	1	F_3	IS	Dormant	HH	20	orange-pink	4
2	4	1	F_3	IS	Dormant	HH	17	purple-yellow	5
2	4	1	F_3	IS	Dormant	HH	19	green	6
1	4	1	F_4	IS	Mixed	HH	3	blue	4
1	4	1	F_4	IS	Mixed	HH	6	IC	7
1	4	1	F_4	IS	Mixed	HH	7	IC	7
1	4	1	F_4	IS	Mixed	HH	15	IC	9
1	4	1	F_4	IS	Mixed	HH	9	IC	13
1	4	1	F_4	IS	Mixed	HH	4	purple	16
1	4	1	F_4	IS	Mixed	HH	10	IC	24
1	4	1	F_4	IS	Mixed	HH	13	IC	32
1	4	1	F_4	IS	Mixed	HH	12	IC	34
1	4	1	F_4	IS	Mixed	HH	19	OC	50
1	4	1	F_4	IS	Mixed	HH	5	pink	51
1	4	1	F_4	IS	Mixed	HH	14	IC	52
1	4	1	F_4	IS	Mixed	HH	17	IC	55
1	4	1	F_4	IS	Mixed	HH	11	IC	56
1	4	1	F_4	IS	Mixed	HH	8	IC	84
1	4	1	F_4	IS	Mixed	HH	16	IC	106
1	4	1	F_4	IS	Mixed	HH	1	orange	211
1	4	1	F_4	IS	Mixed	HH	18	IC	212
1	4	1	F_4	IS	Mixed	HH	20	OC	783
2	4	1	F_4	IS	Mixed	HH	20	unmarked	1
2	4	1	F_4	IS	Mixed	HH	24	unmarked	1
2	4	1	F_4	IS	Mixed	HH	31	unmarked	1
2	4	1	F_4	IS	Mixed	HH	34	unmarked	1
2	4	1	F_4	IS	Mixed	HH	12	blue	2
2	4	1	F_4	IS	Mixed	HH	25	unmarked	2
2	4	1	F_4	IS	Mixed	HH	28	unmarked	2
2	4	1	F_4	IS	Mixed	HH	32	unmarked	2
2	4	1	F_4	IS	Mixed	HH	19	unmarked	3
2	4	1	F_4	IS	Mixed	HH	29	unmarked	3
2	4	1	F_4	IS	Mixed	HH	30	unmarked	3
2	4	1	F_4	IS	Mixed	HH	33	unmarked	3
2	4	1	F_4	IS	Mixed	HH	11	pink-yellow	4
2	4	1	F_4	IS	Mixed	HH	17	unmarked	4
2	4	1	F_4	IS	Mixed	HH	21	unmarked	4
2	4	1	F_4	IS	Mixed	HH	26	unmarked	4
2	4	1	F_4	IS	Mixed	HH	35	unmarked	4
2	4	1	F_4	IS	Mixed	HH	16	blue-yellow	5
2	4	1	F_4	IS	Mixed	HH	22	unmarked	5
2	4	1	F_4	IS	Mixed	HH	27	unmarked	7
2	4	1	F_4	IS	Mixed	HH	18	unmarked	9
2	4	1	F_4	IS	Mixed	HH	23	unmarked	9
2	4	1	F_4	IS	Mixed	HH	8	purple-pink	13
2	4	1	F_4	IS	Mixed	HH	14	orange-green	15
2	4	1	F_4	IS	Mixed	HH	15	orange-purple	49
1	2	1	F_6	IS	Dormant	Soil	3	pink	0
1	2	1	F_6	IS	Dormant	Soil	9	purple-orange	2
1	2	1	F_6	IS	Dormant	Soil	7	pink-green	4
1	2	1	F_6	IS	Dormant	Soil	14	IC	4
1	2	1	F_6	IS	Dormant	Soil	15	IC	9
1	2	1	F_6	IS	Dormant	Soil	13	IC	10
1	2	1	F_6	IS	Dormant	Soil	12	IC	11
1	2	1	F_6	IS	Dormant	Soil	18	IC	12
1	2	1	F_6	IS	Dormant	Soil	19	IC	15
1	2	1	F_6	IS	Dormant	Soil	10	pink-yellow	16
1	2	1	F_6	IS	Dormant	Soil	16	IC	19
1	2	1	F_6	IS	Dormant	Soil	6	purple	33
1	2	1	F_6	IS	Dormant	Soil	5	yellow	60
1	2	1	F_6	IS	Dormant	Soil	17	IC	60
1	2	1	F_6	IS	Dormant	Soil	8	blue-yellow	79
1	2	1	F_6	IS	Dormant	Soil	1	green	81
1	2	1	F_6	IS	Dormant	Soil	4	blue	88
1	2	1	F_6	IS	Dormant	Soil	11	orange-blue	91
1	2	1	F_6	IS	Dormant	Soil	2	orange	125
1	2	1	F_6	IS	Dormant	Soil	20	IC	210
2	2	1	F_6	IS	Dormant	Soil	3	yellow	0
2	2	1	F_6	IS	Dormant	Soil	4	blue	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	.	.	0
2	2	1	F_6	IS	Dormant	Soil	1	pink	1
2	2	1	F_6	IS	Dormant	Soil	5	orange	1
2	2	1	F_6	IS	Dormant	Soil	6	unmarked	5
2	2	1	F_6	IS	Dormant	Soil	2	green	7
1	2	1	F_8	IS	NonDorm	Soil	9	IC	4
1	2	1	F_8	IS	NonDorm	Soil	10	IC	6
1	2	1	F_8	IS	NonDorm	Soil	17	IC	10
1	2	1	F_8	IS	NonDorm	Soil	1	yellow	13
1	2	1	F_8	IS	NonDorm	Soil	7	IC	20
1	2	1	F_8	IS	NonDorm	Soil	18	IC	34
1	2	1	F_8	IS	NonDorm	Soil	12	IC	36
1	2	1	F_8	IS	NonDorm	Soil	8	IC	41
1	2	1	F_8	IS	NonDorm	Soil	5	orange	64
1	2	1	F_8	IS	NonDorm	Soil	3	blue	66
1	2	1	F_8	IS	NonDorm	Soil	6	IC	71
1	2	1	F_8	IS	NonDorm	Soil	4	green	83
1	2	1	F_8	IS	NonDorm	Soil	19	IC	100
1	2	1	F_8	IS	NonDorm	Soil	20	IC	102
1	2	1	F_8	IS	NonDorm	Soil	14	IC	106
1	2	1	F_8	IS	NonDorm	Soil	11	IC	166
1	2	1	F_8	IS	NonDorm	Soil	15	IC	171
1	2	1	F_8	IS	NonDorm	Soil	2	pink	221
1	2	1	F_8	IS	NonDorm	Soil	13	IC	245
1	2	1	F_8	IS	NonDorm	Soil	16	IC	268
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
2	2	1	F_8	IS	NonDorm	Soil	.	.	0
1	6	1	F_9	IS	NonDorm	Control	1	OC	49
1	6	1	F_9	IS	NonDorm	Control	.	.	0
1	6	1	F_9	IS	NonDorm	Control	.	.	0
1	6	1	F_9	IS	NonDorm	Control	.	.	0
1	6	1	F_9	IS	NonDorm	Control	.	.	0
1	6	1	F_9	IS	NonDorm	Control	.	.	0
1	4	1	G_2	IS	Dormant	Control	1	green	0
1	4	1	G_2	IS	Dormant	Control	6	OC	7
1	4	1	G_2	IS	Dormant	Control	3	OC	9
1	4	1	G_2	IS	Dormant	Control	7	OC	9
1	4	1	G_2	IS	Dormant	Control	2	IC	14
1	4	1	G_2	IS	Dormant	Control	8	OC	87
1	4	1	G_2	IS	Dormant	Control	4	OC	256
1	4	1	G_2	IS	Dormant	Control	5	OC	777
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
2	4	1	G_2	IS	Dormant	Control	.	.	0
1	4	1	G_3	IS	Mixed	Litter	2	purple	0
1	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	1	G_3	IS	Mixed	Litter	9	OC	12
1	4	1	G_3	IS	Mixed	Litter	6	OC	19
1	4	1	G_3	IS	Mixed	Litter	15	OC	20
1	4	1	G_3	IS	Mixed	Litter	1	yellow	25
1	4	1	G_3	IS	Mixed	Litter	12	OC	32
1	4	1	G_3	IS	Mixed	Litter	14	OC	44
1	4	1	G_3	IS	Mixed	Litter	10	OC	50
1	4	1	G_3	IS	Mixed	Litter	4	IC	51
1	4	1	G_3	IS	Mixed	Litter	5	IC	52
1	4	1	G_3	IS	Mixed	Litter	8	OC	56
1	4	1	G_3	IS	Mixed	Litter	13	OC	58
1	4	1	G_3	IS	Mixed	Litter	7	OC	92
1	4	1	G_3	IS	Mixed	Litter	11	OC	119
1	4	1	G_3	IS	Mixed	Litter	3	green	308
2	4	1	G_3	IS	Mixed	Litter	0	unmarked	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
2	4	1	G_3	IS	Mixed	Litter	.	.	0
1	4	2	H_2	IS	NonDorm	Litter	.	.	0
1	4	2	H_2	IS	NonDorm	Litter	.	.	0
1	4	2	H_2	IS	NonDorm	Litter	.	.	0
1	6	2	H_12	IS	Dormant	Litter	3	OC	21
1	6	2	H_12	IS	Dormant	Litter	1	OC	38
1	6	2	H_12	IS	Dormant	Litter	2	OC	152
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	I_1	IS	NonDorm	HH	.	.	0
1	4	2	J_2	IS	Dormant	Soil	1.1	pink	0
1	4	2	J_2	IS	Dormant	Soil	9	IC	4
1	4	2	J_2	IS	Dormant	Soil	10	IC	6
1	4	2	J_2	IS	Dormant	Soil	2	green	11
1	4	2	J_2	IS	Dormant	Soil	14	OC	11
1	4	2	J_2	IS	Dormant	Soil	8	IC	13
1	4	2	J_2	IS	Dormant	Soil	15	OC	16
1	4	2	J_2	IS	Dormant	Soil	5	yellow	27
1	4	2	J_2	IS	Dormant	Soil	4	blue	33
1	4	2	J_2	IS	Dormant	Soil	13	OC	41
1	4	2	J_2	IS	Dormant	Soil	6	orange	44
1	4	2	J_2	IS	Dormant	Soil	1	pink	49
1	4	2	J_2	IS	Dormant	Soil	7	IC	52
1	4	2	J_2	IS	Dormant	Soil	11	IC	61
1	4	2	J_2	IS	Dormant	Soil	12	IC	65
1	4	2	J_2	IS	Dormant	Soil	3	purple	89
1	4	2	J_2	IS	Dormant	Soil	16	OC	254
2	4	2	J_2	IS	Dormant	Soil	1	orange	0
2	4	2	J_2	IS	Dormant	Soil	2	blue	0
2	4	2	J_2	IS	Dormant	Soil	3	green	0
2	4	2	J_2	IS	Dormant	Soil	4	yellow	0
2	4	2	J_2	IS	Dormant	Soil	5	yellow-purple	0
2	4	2	J_2	IS	Dormant	Soil	6	blue-purple	0
2	4	2	J_2	IS	Dormant	Soil	7	purple-green	0
2	4	2	J_2	IS	Dormant	Soil	8	purple-pink	0
2	4	2	J_2	IS	Dormant	Soil	9	purple-orange	0
2	4	2	J_2	IS	Dormant	Soil	10	pink-orange	0
2	4	2	J_2	IS	Dormant	Soil	11	orange-green	0
2	4	2	J_2	IS	Dormant	Soil	12	orange-blue	0
2	4	2	J_2	IS	Dormant	Soil	13	purple	0
2	4	2	J_2	IS	Dormant	Soil	14	pink	0
2	4	2	J_2	IS	Dormant	Soil	15	yellow-green	0
2	4	2	J_2	IS	Dormant	Soil	16	green-pink	0
2	4	2	J_2	IS	Dormant	Soil	17	blue-pink	0
2	4	2	J_2	IS	Dormant	Soil	18	blue-green	0
2	4	2	J_2	IS	Dormant	Soil	20	orange-yellow	0
2	4	2	J_2	IS	Dormant	Soil	19	blue-yellow	2
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
2	4	2	J_4	IS	Mixed	Soil	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_11	IS	Dormant	HH	.	.	0
2	8	2	J_11	IS	Dormant	HH	.	.	0
2	8	2	J_11	IS	Dormant	HH	.	.	0
2	8	2	J_11	IS	Dormant	HH	.	.	0
1	8	2	J_12	IS	NonDorm	Control	.	.	0
1	8	2	J_12	IS	NonDorm	Control	.	.	0
1	8	2	J_12	IS	NonDorm	Control	.	.	0
1	8	2	J_12	IS	NonDorm	Control	.	.	0
1	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	8	2	J_12	IS	NonDorm	Control	.	.	0
2	7	2	K_4	IS	Dormant	Control	6	purple-yellow	1
2	7	2	K_4	IS	Dormant	Control	17	unmarked	1
2	7	2	K_4	IS	Dormant	Control	10	unmarked	2
2	7	2	K_4	IS	Dormant	Control	15	unmarked	2
2	7	2	K_4	IS	Dormant	Control	12	unmarked	3
2	7	2	K_4	IS	Dormant	Control	20	unmarked	4
2	7	2	K_4	IS	Dormant	Control	2	blue	5
2	7	2	K_4	IS	Dormant	Control	11	unmarked	6
2	7	2	K_4	IS	Dormant	Control	5	green-yellow	7
2	7	2	K_4	IS	Dormant	Control	7	blue-pink	7
2	7	2	K_4	IS	Dormant	Control	13	unmarked	7
2	7	2	K_4	IS	Dormant	Control	19	unmarked	8
2	7	2	K_4	IS	Dormant	Control	8	orange-purple	9
2	7	2	K_4	IS	Dormant	Control	14	unmarked	11
2	7	2	K_4	IS	Dormant	Control	18	unmarked	11
2	7	2	K_4	IS	Dormant	Control	16	unmarked	16
2	7	2	K_4	IS	Dormant	Control	9	pink-green	22
2	7	2	K_4	IS	Dormant	Control	3	green	32
2	7	2	K_4	IS	Dormant	Control	4	pink	32
2	7	2	K_4	IS	Dormant	Control	1	yellow	51
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
1	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_5	IS	NonDorm	HH	.	.	0
2	7	2	K_6	IS	Mixed	Litter	.	.	0
2	7	2	K_6	IS	Mixed	Litter	.	.	0
1	8	2	K_8	IS	NonDorm	HH	.	.	0
1	8	2	K_8	IS	NonDorm	HH	.	.	0
2	8	2	K_8	IS	NonDorm	HH	.	.	0
2	8	2	K_8	IS	NonDorm	HH	.	.	0
2	8	2	K_8	IS	NonDorm	HH	.	.	0
2	8	2	K_8	IS	NonDorm	HH	.	.	0
2	8	2	K_8	IS	NonDorm	HH	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
2	8	2	K_10	IS	NonDorm	Litter	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
1	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_11	IS	Mixed	HH	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
2	8	2	K_12	IS	Dormant	Litter	.	.	0
1	7	2	L_1	IS	Dormant	HH	.	.	0
1	7	2	L_1	IS	Dormant	HH	.	.	0
1	7	2	L_1	IS	Dormant	HH	.	.	0
1	7	2	L_1	IS	Dormant	HH	.	.	0
1	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
2	7	2	L_1	IS	Dormant	HH	.	.	0
1	7	2	L_2	IS	Dormant	Litter	.	.	0
1	7	2	L_2	IS	Dormant	Litter	.	.	0
1	7	2	L_2	IS	Dormant	Litter	.	.	0
1	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_2	IS	Dormant	Litter	.	.	0
2	7	2	L_3	IS	Dormant	Soil	.	.	0
2	7	2	L_3	IS	Dormant	Soil	.	.	0
2	7	2	L_3	IS	Dormant	Soil	.	.	0
2	7	2	L_3	IS	Dormant	Soil	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	.	.	0
2	7	2	L_6	IS	Mixed	HH	2	pink	3
2	7	2	L_6	IS	Mixed	HH	3	unmarked	4
2	7	2	L_6	IS	Mixed	HH	5	unmarked	5
2	7	2	L_6	IS	Mixed	HH	4	unmarked	9
2	7	2	L_6	IS	Mixed	HH	1	purple	13
1	7	2	L_7	IS	Mixed	Soil	2	green	9
1	7	2	L_7	IS	Mixed	Soil	3	pink	27
1	7	2	L_7	IS	Mixed	Soil	1	orange	161
2	7	2	L_7	IS	Mixed	Soil	1	yellow	0
2	7	2	L_7	IS	Mixed	Soil	2.1	pink	0
2	7	2	L_7	IS	Mixed	Soil	2.2	pink	0
2	7	2	L_7	IS	Mixed	Soil	3	blue	0
2	7	2	L_7	IS	Mixed	Soil	4	orange	0
2	7	2	L_7	IS	Mixed	Soil	5	purple	0
2	7	2	L_7	IS	Mixed	Soil	6	green	0
2	7	2	L_7	IS	Mixed	Soil	9	blue-purple	0
2	7	2	L_7	IS	Mixed	Soil	10	blue-green	0
2	7	2	L_7	IS	Mixed	Soil	11	blue-pink	0
2	7	2	L_7	IS	Mixed	Soil	13	purple-pink	0
2	7	2	L_7	IS	Mixed	Soil	14	pink-yellow	0
2	7	2	L_7	IS	Mixed	Soil	17	purple-green	0
2	7	2	L_7	IS	Mixed	Soil	18	yellow-green	0
2	7	2	L_7	IS	Mixed	Soil	19	pink-orange	0
2	7	2	L_7	IS	Mixed	Soil	12	purple-yellow	1
2	7	2	L_7	IS	Mixed	Soil	15	yellow-orange	1
2	7	2	L_7	IS	Mixed	Soil	7	blue-yellow	2
2	7	2	L_7	IS	Mixed	Soil	16	purple-orange	3
2	7	2	L_7	IS	Mixed	Soil	21	unmarked	5
2	7	2	L_7	IS	Mixed	Soil	22	unmarked	9
2	7	2	L_7	IS	Mixed	Soil	23	unmarked	11
1	8	2	L_10	IS	Dormant	Soil	1.1	purple	0
1	8	2	L_10	IS	Dormant	Soil	4	orange	15
1	8	2	L_10	IS	Dormant	Soil	3	blue	18
1	8	2	L_10	IS	Dormant	Soil	2	yellow	22
1	8	2	L_10	IS	Dormant	Soil	1	purple	130
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
2	8	2	L_10	IS	Dormant	Soil	.	.	0
1	8	2	L_11	IS	Dormant	Control	1	yellow	0
1	8	2	L_11	IS	Dormant	Control	.	.	0
1	8	2	L_11	IS	Dormant	Control	.	.	0
1	8	2	L_11	IS	Dormant	Control	.	.	0
1	8	2	L_11	IS	Dormant	Control	2	purple	234
2	8	2	L_11	IS	Dormant	Control	1	blue	0
2	8	2	L_11	IS	Dormant	Control	2.1	green	0
2	8	2	L_11	IS	Dormant	Control	2.2	green	0
2	8	2	L_11	IS	Dormant	Control	3	purple	0
2	8	2	L_11	IS	Dormant	Control	4	yellow	0
2	8	2	L_11	IS	Dormant	Control	5.1	orange	0
2	8	2	L_11	IS	Dormant	Control	6	pink	0
2	8	2	L_11	IS	Dormant	Control	7.1	blue-purple	0
2	8	2	L_11	IS	Dormant	Control	7.2	blue-purple	0
2	8	2	L_11	IS	Dormant	Control	8	pink-purple	0
2	8	2	L_11	IS	Dormant	Control	9	green-purple	0
2	8	2	L_11	IS	Dormant	Control	16	blue-yellow	4
2	8	2	L_11	IS	Dormant	Control	12	yellow-pink	9
2	8	2	L_11	IS	Dormant	Control	14	blue-pink	9
2	8	2	L_11	IS	Dormant	Control	10	orange-purple	15
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_1	IS	NonDorm	Soil	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
2	7	2	M_5	IS	NonDorm	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	2	orange	0
1	7	2	M_6	IS	Mixed	Control	4	purple	0
1	7	2	M_6	IS	Mixed	Control	5	yellow	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	.	.	0
1	7	2	M_6	IS	Mixed	Control	1	blue	179
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	.	.	0
2	7	2	M_6	IS	Mixed	Control	1	unmarked	8
1	8	2	M_9	IS	Mixed	Control	1.1	purple	0
1	8	2	M_9	IS	Mixed	Control	1.2	purple	0
1	8	2	M_9	IS	Mixed	Control	2.1	yellow	0
1	8	2	M_9	IS	Mixed	Control	4	green	15
1	8	2	M_9	IS	Mixed	Control	8	orange-green	18
1	8	2	M_9	IS	Mixed	Control	10	pink-yellow	65
2	8	2	M_9	IS	Mixed	Control	1	orange	0
2	8	2	M_9	IS	Mixed	Control	2	pink	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	.	.	0
2	8	2	M_9	IS	Mixed	Control	5	green	2
2	8	2	M_9	IS	Mixed	Control	9	orange-purple	2
2	8	2	M_9	IS	Mixed	Control	12	unmarked	3
2	8	2	M_9	IS	Mixed	Control	10	unmarked	4
2	8	2	M_9	IS	Mixed	Control	7	orange-pink	6
2	8	2	M_9	IS	Mixed	Control	8	orange-blue	6
2	8	2	M_9	IS	Mixed	Control	11	unmarked	8
2	8	2	M_9	IS	Mixed	Control	4	purple	10
2	8	2	M_9	IS	Mixed	Control	3	blue	15
2	8	2	M_9	IS	Mixed	Control	6	yellow	18
1	8	2	M_11	IS	Mixed	Litter	1	blue	0
1	8	2	M_11	IS	Mixed	Litter	2	orange	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
1	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_11	IS	Mixed	Litter	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
2	8	2	M_12	IS	NonDorm	Soil	.	.	0
1	8	2	M_13	IS	Mixed	Soil	6	orange	3
1	8	2	M_13	IS	Mixed	Soil	4	blue	6
1	8	2	M_13	IS	Mixed	Soil	2	purple	10
1	8	2	M_13	IS	Mixed	Soil	5	yellow	10
1	8	2	M_13	IS	Mixed	Soil	3	pink	47
1	8	2	M_13	IS	Mixed	Soil	7	orange-yellow	85
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	.	.	0
2	8	2	M_13	IS	Mixed	Soil	3	unmarked	1
2	8	2	M_13	IS	Mixed	Soil	11	unmarked	2
2	8	2	M_13	IS	Mixed	Soil	6	unmarked	3
2	8	2	M_13	IS	Mixed	Soil	7	unmarked	3
2	8	2	M_13	IS	Mixed	Soil	8	unmarked	4
2	8	2	M_13	IS	Mixed	Soil	10	unmarked	4
2	8	2	M_13	IS	Mixed	Soil	1	blue	12
2	8	2	M_13	IS	Mixed	Soil	2	unmarked	15
2	8	2	M_13	IS	Mixed	Soil	9	unmarked	17
2	8	2	M_13	IS	Mixed	Soil	5	unmarked	20
2	8	2	M_13	IS	Mixed	Soil	4	unmarked	21
;
/*lifetime fitness*
proc univariate plot normal;
	var fruits sfruits lfruits llfruits;
*
proc sort;
	by block year envt dorm;
proc means n mean stderr;
	var fruits;
	by block year envt dorm;
*
proc sort;
	by newblock year envt dorm;
proc means n mean stderr;
	var fruits;
	by newblock year envt dorm;
/*non-parametric test - no block b/c no soil y1 ND & no popid b/c not all pops have data both years*
proc rank data = lifetimefitsupp out=rankfruit;
	var fruits;
	ranks r;
/*non-parametric rank test*
proc mixed data=rankfruit ANOVAF;
	class dorm envt year;
	model r = dorm | envt | year / CHISQ;
	repeated / type=UN(1) GRP=dorm*envt*year;

	/*friedman's test - ind tests*
proc freq data = lifetimefitsupp;
	tables dorm*fruits /
	cmh2 scores=rank noprint;

/*reponly - per-capita rep output*
proc univariate plot normal;
	var reponly sreponly lreponly llreponly;
	/
proc sort;
	by dorm;
proc means n mean stderr var;
	var reponly;
	by dorm;
	*
proc sort;
	by block year envt dorm;
proc means n mean stderr;
	var reponly;
	by year envt dorm;
proc sort;
	by newblock year envt dorm;
proc means n;
	var reponly;
	by newblock year envt dorm;
/*ANOVA of log transformed data - no block & no year b/c no Litter D&M year 2 - run only with year 1 included in data*
proc mixed data = lifetimefitsupp;
	class dorm envt popid;
	model lreponly = dorm envt dorm*envt;
	random popid(dorm*envt); /*nest within trt combo*
	lsmeans dorm envt dorm*envt / cl adjust=tukey; 

proc mixed data = lifetimefitsupp;
	class dorm envt popid block;
	model lreponly = dorm envt dorm*envt;
	random popid(dorm*envt) block ; /*nest within trt combo*/ /*zero variance for block causes model estimate issues*
	lsmeans dorm envt dorm*envt / cl adjust=tukey; 

/*final model used:*
proc mixed data = lifetimefitsupp;
	class dorm envt popid newblock;
	model lreponly = dorm envt dorm*envt;
	random popid(dorm*envt) newblock ; /*nest within trt combo*
	lsmeans dorm envt dorm*envt / cl adjust=tukey; 
/*ind tests*
proc mixed data = lifetimefitsupp;
	class dorm year popid;
	model lreponly = dorm year dorm*year;
	random popid(dorm); /*new block explains 0 variation*
	lsmeans dorm year dorm*year / cl adjust=tukey;
*
proc mixed data = lifetimefitsupp;
	class envt popid newblock;
	model lreponly = envt;
	random popid(envt) newblock;

/*probfruits - survival of 20 indivs to rep*
	
proc sort; 
	by popid year;
proc means n;
	var probfruits;
	by popid year;
	*
proc sort;
	by block year envt dorm;
proc means n mean stderr;
	var probfruits;
	by block year envt dorm;
	*
proc sort;
	by newblock year envt dorm;
proc means n mean stderr;
	var probfruits;
	by newblock year envt dorm;
/*logistic regression - full*
proc logistic data=lifetimefitsupp;
	class dorm envt year;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / link = logit details scale = deviance firth;
	/*not really modeling pop accurately
proc logistic data=lifetimefitsupp;
	class dorm envt year popid;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year popid / link = logit details scale = deviance firth;
	/*SAS cant estimate the block effects*
proc logistic data=lifetimefitsupp;
	class dorm envt year popid block;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year popid block / link = logit details scale = deviance firth;
proc logistic data=lifetimefitsupp;
	class dorm envt year popid newblock;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year popid newblock / link = logit details scale = deviance firth;
	*
proc logistic data=lifetimefitsupp;
	class dorm envt year;
	model probfruits = dorm envt year / link = logit details scale = deviance firth;
/*
proc glimmix data=lifetimefitsupp; /*doesn't converge*
	class dorm envt year popid;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / dist=binomial link=logit;
	random intercept / subject=popid(dorm*envt); /*nest within trt combo*

proc glimmix data=lifetimefitsupp; /*doesn't converge*
	class dorm envt year popid newblock;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / dist=binomial link=logit;
	random intercept / subject=popid(dorm*envt); /*nest within trt combo*
	random intercept / subject = newblock;

proc glimmix data=lifetimefitsupp; /*doesn't converge*
	class dorm envt year popid newblock;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / dist=binomial link=logit;
	random intercept / subject=newblock; /*nest within trt combo*
*/
/*no year 2*
proc logistic data=lifetimefitsupp;
	class dorm envt popid;
	model probfruits = dorm envt dorm*envt popid / link = logit details scale = deviance firth;
proc glimmix data=lifetimefitsupp; /*did not converge*
	class dorm envt year popid;
	model probfruits = dorm envt year dorm*envt dorm*year envt*year dorm*envt*year / dist=binomial link=logit;
	random intercept / subject=popid(dorm*envt); /*nest within trt combo*;

/*ind tests*
proc logistic data=lifetimefitsupp;
	class dorm;
	model probfruits = dorm / link = logit details scale = deviance firth;
*/
run;
quit;

/*Mult Test for Lifetime Fitness*/
data multtest;
input test $ Raw_P;
datalines;
dndCTRLt1	0.0001
dndCTRLt2	0.0001
dmCTRLt1	0.9067
dmCTRLt2	0.0119
ndmCTRLt1	0.0001
ndmCTRLt2	0.0699
;
proc multtest inpvalues=multtest holm hoc fdr;
run;
quit;

data multtest;
input test $ Raw_P;
datalines;
dndHHt1	0.0047
dndHHt2	0.2491
dmHHt1	0.1689
dmHHt2	0.0033
ndmHHt1	0.0001
ndmHHt2	0.0005
;
proc multtest inpvalues=multtest holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndNSt1	0.4197
dndNSt2 0.0717
dmNSt1	0.0029
dmNSt2	0.0093
ndmNSt1	0.0133
ndmNSt2	0.0001
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;

data multtestmingermISenvt;
input test $ Raw_P;
datalines;
dndSLt1	0.1503
dndSLt2 0.0001
dmSLt1	0.3654
ndmSLt1	0.6459
ndmSLt2	0.0001
;
proc multtest inpvalues=multtestmingermISenvt holm hoc fdr;
run;
quit;
