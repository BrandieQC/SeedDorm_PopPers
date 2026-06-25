data seasonalgerm_SB;
input dorm $ envt $ year $ Season $ SumSeasonGerms_Conf SumSeasonGerms_Max;
title 'Seasonal Germ ChiSquare - SB Pots'; /*Wint and Spring added to Late Fall and Summer*/
/*contingency table:*/
datalines; 
D	Control	1	EarlyFall	106	147
D	Control	1	LateFall	21	24
D	Control	1	Summer	104	148
D	Control	2	EarlyFall	1	5
D	Control	2	LateFall	0	0
D	Control	2	Summer	0	1
D	HH	1	EarlyFall	150	195
D	HH	1	LateFall	44	51
D	HH	1	Summer	98	136
D	HH	2	EarlyFall	13	13
D	HH	2	LateFall	6	7
D	HH	2	Summer	0	0
D	Soil	1	EarlyFall	36	51
D	Soil	1	LateFall	17	23
D	Soil	1	Summer	5	9
D	Soil	2	EarlyFall	2	2
D	Soil	2	LateFall	5	6
D	Soil	2	Summer	0	0
ND	Control	1	EarlyFall	15	27
ND	Control	1	LateFall	4	6
ND	Control	1	Summer	214	233
ND	Control	2	EarlyFall	0	2
ND	Control	2	LateFall	0	1
ND	Control	2	Summer	0	0
ND	HH	1	EarlyFall	28	33
ND	HH	1	LateFall	10	12
ND	HH	1	Summer	134	158
ND	HH	2	EarlyFall	2	2
ND	HH	2	LateFall	1	1
ND	HH	2	Summer	0	0
ND	Soil	1	EarlyFall	9	27
ND	Soil	1	LateFall	2	2
ND	Soil	1	Summer	1	2
ND	Soil	2	EarlyFall	0	0
ND	Soil	2	LateFall	2	2
ND	Soil	2	Summer	0	0
;
/*full models*/
proc sort;
	by year;

proc catmod data = seasonalgerm_SB;
	by year; 
	weight SumSeasonGerms_Conf; /*specifies contingency table cell frequencies*/
	model  Season = dorm envt dorm*envt / design freq; /*design option can help you verify that you specified the model correctly*/

proc catmod data = seasonalgerm_SB;
	by year; 
	weight SumSeasonGerms_Max; /*specifies contingency table cell frequencies*/
	model  Season = dorm envt dorm*envt / design freq; /*design option can help you verify that you specified the model correctly*/

/*ind tests*
proc sort;
	by year envt;

proc catmod data = seasonalgerm_SB;
	by year envt; 
	weight SumSeasonGerms_Conf; /*specifies contingency table cell frequencies*
	model  Season = dorm / design freq; /*design option can help you verify that you specified the model correctly*

proc catmod data = seasonalgerm_SB;
	by year envt; 
	weight SumSeasonGerms_Max; /*specifies contingency table cell frequencies*
	model  Season = dorm / design freq; /*design option can help you verify that you specified the model correctly*/

run;
quit;
