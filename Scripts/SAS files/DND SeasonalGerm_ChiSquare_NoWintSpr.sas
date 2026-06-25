/*
data seasonalgerm_CTRL;
input RIL $ dorm $ envt $ year $ Season $ SumSeasonGerms;
if envt NE 'Control' then delete;
/*ind tests:*
if dorm = 'D' then delete;*
title 'Seasonal Germ ChiSquare - CTRL'; /*Wint and Spring added to Late Fall and Summer*
/*contingency table:*
datalines; 
BS	D	Control	1	EarlyFall	63
BS	D	Control	1	LateFall	18
BS	D	Control	1	Summer	0
BS	D	Control	2	EarlyFall	27
BS	D	Control	2	LateFall	2
BS	D	Control	2	Summer	400
BS	D	Control	3	EarlyFall	112
BS	D	Control	3	LateFall	9
BS	D	Control	3	Summer	19
BS	D	Litter	1	EarlyFall	44
BS	D	Litter	1	LateFall	12
BS	D	Litter	1	Summer	38
BS	D	Litter	2	EarlyFall	4
BS	D	Litter	2	LateFall	2
BS	D	Litter	2	Summer	6
BS	M	Control	1	EarlyFall	40
BS	M	Control	1	LateFall	2
BS	M	Control	1	Summer	0
BS	M	Control	2	EarlyFall	1
BS	M	Control	2	LateFall	2
BS	M	Control	2	Summer	439
BS	M	Control	3	EarlyFall	146
BS	M	Control	3	LateFall	5
BS	M	Control	3	Summer	0
BS	ND	Control	1	EarlyFall	22
BS	ND	Control	1	LateFall	4
BS	ND	Control	1	Summer	0
BS	ND	Control	2	EarlyFall	15
BS	ND	Control	2	LateFall	2
BS	ND	Control	2	Summer	203
BS	ND	Control	3	EarlyFall	39
BS	ND	Control	3	LateFall	0
BS	ND	Control	3	Summer	0
BS	ND	Litter	1	EarlyFall	21
BS	ND	Litter	1	LateFall	1
BS	ND	Litter	1	Summer	0
BS	ND	Litter	2	EarlyFall	25
BS	ND	Litter	2	LateFall	4
BS	ND	Litter	2	Summer	38
IS	D	Control	1	EarlyFall	28
IS	D	Control	1	LateFall	15
IS	D	Control	1	Summer	8
IS	D	Control	2	EarlyFall	26
IS	D	Control	2	LateFall	20
IS	D	Control	2	Summer	477
IS	D	Control	3	EarlyFall	970
IS	D	Control	3	LateFall	4
IS	D	Control	3	Summer	0
IS	D	HH	1	EarlyFall	82
IS	D	HH	1	LateFall	116
IS	D	HH	1	Summer	8
IS	D	HH	2	EarlyFall	242
IS	D	HH	2	LateFall	130
IS	D	HH	2	Summer	258
IS	D	HH	3	EarlyFall	1258
IS	D	HH	3	LateFall	224
IS	D	HH	3	Summer	0
IS	D	Litter	1	EarlyFall	39
IS	D	Litter	1	LateFall	47
IS	D	Litter	1	Summer	5
IS	D	Litter	2	EarlyFall	59
IS	D	Litter	2	LateFall	0
IS	D	Litter	2	Summer	55
IS	D	Litter	3	EarlyFall	186
IS	D	Litter	3	LateFall	11
IS	D	Litter	3	Summer	0
IS	D	Soil	1	EarlyFall	47
IS	D	Soil	1	LateFall	92
IS	D	Soil	1	Summer	2
IS	D	Soil	2	EarlyFall	67
IS	D	Soil	2	LateFall	111
IS	D	Soil	2	Summer	96
IS	D	Soil	3	EarlyFall	327
IS	D	Soil	3	LateFall	24
IS	D	Soil	3	Summer	0
IS	M	Control	1	EarlyFall	43
IS	M	Control	1	LateFall	77
IS	M	Control	1	Summer	37
IS	M	Control	2	EarlyFall	34
IS	M	Control	2	LateFall	0
IS	M	Control	2	Summer	184
IS	M	Control	3	EarlyFall	699
IS	M	Control	3	LateFall	28
IS	M	Control	3	Summer	0
IS	M	HH	1	EarlyFall	98
IS	M	HH	1	LateFall	197
IS	M	HH	1	Summer	46
IS	M	HH	2	EarlyFall	947
IS	M	HH	2	LateFall	140
IS	M	HH	2	Summer	255
IS	M	HH	3	EarlyFall	965
IS	M	HH	3	LateFall	200
IS	M	HH	3	Summer	0
IS	M	Litter	1	EarlyFall	44
IS	M	Litter	1	LateFall	45
IS	M	Litter	1	Summer	28
IS	M	Litter	2	EarlyFall	18
IS	M	Litter	2	LateFall	6
IS	M	Litter	2	Summer	112
IS	M	Litter	3	EarlyFall	444
IS	M	Litter	3	LateFall	41
IS	M	Litter	3	Summer	0
IS	M	Soil	1	EarlyFall	22
IS	M	Soil	1	LateFall	158
IS	M	Soil	1	Summer	13
IS	M	Soil	2	EarlyFall	7
IS	M	Soil	2	LateFall	142
IS	M	Soil	2	Summer	311
IS	M	Soil	3	EarlyFall	307
IS	M	Soil	3	LateFall	13
IS	M	Soil	3	Summer	0
IS	ND	Control	1	EarlyFall	7
IS	ND	Control	1	LateFall	42
IS	ND	Control	1	Summer	16
IS	ND	Control	2	EarlyFall	12
IS	ND	Control	2	LateFall	4
IS	ND	Control	2	Summer	170
IS	ND	Control	3	EarlyFall	120
IS	ND	Control	3	LateFall	3
IS	ND	Control	3	Summer	0
IS	ND	HH	1	EarlyFall	351
IS	ND	HH	1	LateFall	190
IS	ND	HH	1	Summer	65
IS	ND	HH	2	EarlyFall	170
IS	ND	HH	2	LateFall	43
IS	ND	HH	2	Summer	240
IS	ND	HH	3	EarlyFall	303
IS	ND	HH	3	LateFall	15
IS	ND	HH	3	Summer	0
IS	ND	Litter	1	EarlyFall	165
IS	ND	Litter	1	LateFall	72
IS	ND	Litter	1	Summer	33
IS	ND	Litter	2	EarlyFall	39
IS	ND	Litter	2	LateFall	43
IS	ND	Litter	2	Summer	13
IS	ND	Litter	3	EarlyFall	214
IS	ND	Litter	3	LateFall	5
IS	ND	Litter	3	Summer	0
IS	ND	Soil	1	EarlyFall	8
IS	ND	Soil	1	LateFall	145
IS	ND	Soil	1	Summer	10
IS	ND	Soil	2	EarlyFall	4
IS	ND	Soil	2	LateFall	8
IS	ND	Soil	2	Summer	225
IS	ND	Soil	3	EarlyFall	34
IS	ND	Soil	3	LateFall	1
IS	ND	Soil	3	Summer	0
TC	D	Control	1	EarlyFall	38
TC	D	Control	1	LateFall	3
TC	D	Control	1	Summer	0
TC	D	Control	2	EarlyFall	31
TC	D	Control	2	LateFall	7
TC	D	Control	2	Summer	364
TC	D	Control	3	EarlyFall	111
TC	D	Control	3	LateFall	6
TC	D	Control	3	Summer	0
TC	M	Control	1	EarlyFall	72
TC	M	Control	1	LateFall	48
TC	M	Control	1	Summer	0
TC	M	Control	2	EarlyFall	13
TC	M	Control	2	LateFall	2
TC	M	Control	2	Summer	182
TC	M	Control	3	EarlyFall	316
TC	M	Control	3	LateFall	4
TC	M	Control	3	Summer	0
TC	ND	Control	1	EarlyFall	12
TC	ND	Control	1	LateFall	5
TC	ND	Control	1	Summer	0
TC	ND	Control	2	EarlyFall	15
TC	ND	Control	2	LateFall	1
TC	ND	Control	2	Summer	218
TC	ND	Control	3	EarlyFall	12
TC	ND	Control	3	LateFall	1
TC	ND	Control	3	Summer	0
;
/*full model*
proc sort;
	by year;

proc catmod data = seasonalgerm_CTRL;
	by year; 
	weight SumSeasonGerms; /*specifies contingency table cell frequencies*
	model  Season = dorm RIL dorm*RIL / design freq; /*design option can help you verify that you specified the model correctly*

/*ind tests*
proc sort;
	by RIL year;

proc catmod data = seasonalgerm_CTRL;
	by RIL year; 
	weight SumSeasonGerms; /*specifies contingency table cell frequencies*
	model  Season = dorm / design freq; /*design option can help you verify that you specified the model correctly*
run;
quit;
*/
data seasonalgerm_ENVT;
input RIL $ dorm $ envt $ year $ Season $ SumSeasonGerms;
if RIL NE 'IS' then delete;
/*ind tests:*
if dorm = 'D' then delete;*/
title 'Seasonal Germ ChiSquare - IxS - Envts';
/*contingency table:*/
datalines; 
BS	D	Control	1	EarlyFall	63
BS	D	Control	1	LateFall	18
BS	D	Control	1	Summer	0
BS	D	Control	2	EarlyFall	27
BS	D	Control	2	LateFall	2
BS	D	Control	2	Summer	400
BS	D	Control	3	EarlyFall	112
BS	D	Control	3	LateFall	9
BS	D	Control	3	Summer	19
BS	D	Litter	1	EarlyFall	44
BS	D	Litter	1	LateFall	12
BS	D	Litter	1	Summer	38
BS	D	Litter	2	EarlyFall	4
BS	D	Litter	2	LateFall	2
BS	D	Litter	2	Summer	6
BS	M	Control	1	EarlyFall	40
BS	M	Control	1	LateFall	2
BS	M	Control	1	Summer	0
BS	M	Control	2	EarlyFall	1
BS	M	Control	2	LateFall	2
BS	M	Control	2	Summer	439
BS	M	Control	3	EarlyFall	146
BS	M	Control	3	LateFall	5
BS	M	Control	3	Summer	0
BS	ND	Control	1	EarlyFall	22
BS	ND	Control	1	LateFall	4
BS	ND	Control	1	Summer	0
BS	ND	Control	2	EarlyFall	15
BS	ND	Control	2	LateFall	2
BS	ND	Control	2	Summer	203
BS	ND	Control	3	EarlyFall	39
BS	ND	Control	3	LateFall	0
BS	ND	Control	3	Summer	0
BS	ND	Litter	1	EarlyFall	21
BS	ND	Litter	1	LateFall	1
BS	ND	Litter	1	Summer	0
BS	ND	Litter	2	EarlyFall	25
BS	ND	Litter	2	LateFall	4
BS	ND	Litter	2	Summer	38
IS	D	Control	1	EarlyFall	28
IS	D	Control	1	LateFall	15
IS	D	Control	1	Summer	8
IS	D	Control	2	EarlyFall	26
IS	D	Control	2	LateFall	20
IS	D	Control	2	Summer	477
IS	D	Control	3	EarlyFall	970
IS	D	Control	3	LateFall	4
IS	D	Control	3	Summer	0
IS	D	HH	1	EarlyFall	82
IS	D	HH	1	LateFall	116
IS	D	HH	1	Summer	8
IS	D	HH	2	EarlyFall	242
IS	D	HH	2	LateFall	130
IS	D	HH	2	Summer	258
IS	D	HH	3	EarlyFall	1258
IS	D	HH	3	LateFall	224
IS	D	HH	3	Summer	0
IS	D	Litter	1	EarlyFall	39
IS	D	Litter	1	LateFall	47
IS	D	Litter	1	Summer	5
IS	D	Litter	2	EarlyFall	59
IS	D	Litter	2	LateFall	0
IS	D	Litter	2	Summer	55
IS	D	Litter	3	EarlyFall	186
IS	D	Litter	3	LateFall	11
IS	D	Litter	3	Summer	0
IS	D	Soil	1	EarlyFall	47
IS	D	Soil	1	LateFall	92
IS	D	Soil	1	Summer	2
IS	D	Soil	2	EarlyFall	67
IS	D	Soil	2	LateFall	111
IS	D	Soil	2	Summer	96
IS	D	Soil	3	EarlyFall	327
IS	D	Soil	3	LateFall	24
IS	D	Soil	3	Summer	0
IS	M	Control	1	EarlyFall	43
IS	M	Control	1	LateFall	77
IS	M	Control	1	Summer	37
IS	M	Control	2	EarlyFall	34
IS	M	Control	2	LateFall	0
IS	M	Control	2	Summer	184
IS	M	Control	3	EarlyFall	699
IS	M	Control	3	LateFall	28
IS	M	Control	3	Summer	0
IS	M	HH	1	EarlyFall	98
IS	M	HH	1	LateFall	197
IS	M	HH	1	Summer	46
IS	M	HH	2	EarlyFall	947
IS	M	HH	2	LateFall	140
IS	M	HH	2	Summer	255
IS	M	HH	3	EarlyFall	965
IS	M	HH	3	LateFall	200
IS	M	HH	3	Summer	0
IS	M	Litter	1	EarlyFall	44
IS	M	Litter	1	LateFall	45
IS	M	Litter	1	Summer	28
IS	M	Litter	2	EarlyFall	18
IS	M	Litter	2	LateFall	6
IS	M	Litter	2	Summer	112
IS	M	Litter	3	EarlyFall	444
IS	M	Litter	3	LateFall	41
IS	M	Litter	3	Summer	0
IS	M	Soil	1	EarlyFall	22
IS	M	Soil	1	LateFall	158
IS	M	Soil	1	Summer	13
IS	M	Soil	2	EarlyFall	7
IS	M	Soil	2	LateFall	142
IS	M	Soil	2	Summer	311
IS	M	Soil	3	EarlyFall	307
IS	M	Soil	3	LateFall	13
IS	M	Soil	3	Summer	0
IS	ND	Control	1	EarlyFall	7
IS	ND	Control	1	LateFall	42
IS	ND	Control	1	Summer	16
IS	ND	Control	2	EarlyFall	12
IS	ND	Control	2	LateFall	4
IS	ND	Control	2	Summer	170
IS	ND	Control	3	EarlyFall	120
IS	ND	Control	3	LateFall	3
IS	ND	Control	3	Summer	0
IS	ND	HH	1	EarlyFall	351
IS	ND	HH	1	LateFall	190
IS	ND	HH	1	Summer	65
IS	ND	HH	2	EarlyFall	170
IS	ND	HH	2	LateFall	43
IS	ND	HH	2	Summer	240
IS	ND	HH	3	EarlyFall	303
IS	ND	HH	3	LateFall	15
IS	ND	HH	3	Summer	0
IS	ND	Litter	1	EarlyFall	165
IS	ND	Litter	1	LateFall	72
IS	ND	Litter	1	Summer	33
IS	ND	Litter	2	EarlyFall	39
IS	ND	Litter	2	LateFall	43
IS	ND	Litter	2	Summer	13
IS	ND	Litter	3	EarlyFall	214
IS	ND	Litter	3	LateFall	5
IS	ND	Litter	3	Summer	0
IS	ND	Soil	1	EarlyFall	8
IS	ND	Soil	1	LateFall	145
IS	ND	Soil	1	Summer	10
IS	ND	Soil	2	EarlyFall	4
IS	ND	Soil	2	LateFall	8
IS	ND	Soil	2	Summer	225
IS	ND	Soil	3	EarlyFall	34
IS	ND	Soil	3	LateFall	1
IS	ND	Soil	3	Summer	0
TC	D	Control	1	EarlyFall	38
TC	D	Control	1	LateFall	3
TC	D	Control	1	Summer	0
TC	D	Control	2	EarlyFall	31
TC	D	Control	2	LateFall	7
TC	D	Control	2	Summer	364
TC	D	Control	3	EarlyFall	111
TC	D	Control	3	LateFall	6
TC	D	Control	3	Summer	0
TC	M	Control	1	EarlyFall	72
TC	M	Control	1	LateFall	48
TC	M	Control	1	Summer	0
TC	M	Control	2	EarlyFall	13
TC	M	Control	2	LateFall	2
TC	M	Control	2	Summer	182
TC	M	Control	3	EarlyFall	316
TC	M	Control	3	LateFall	4
TC	M	Control	3	Summer	0
TC	ND	Control	1	EarlyFall	12
TC	ND	Control	1	LateFall	5
TC	ND	Control	1	Summer	0
TC	ND	Control	2	EarlyFall	15
TC	ND	Control	2	LateFall	1
TC	ND	Control	2	Summer	218
TC	ND	Control	3	EarlyFall	12
TC	ND	Control	3	LateFall	1
TC	ND	Control	3	Summer	0
;
/*full model*/
proc sort;
	by year;

proc catmod data = seasonalgerm_ENVT;
	by year; 
	weight SumSeasonGerms; /*specifies contingency table cell frequencies*/
	model  Season = dorm envt dorm*envt / design freq; /*design option can help you verify that you specified the model correctly*/

/*ind tests*
proc sort;
	by envt year;

proc catmod data = seasonalgerm_ENVT;
	by envt year; 
	weight SumSeasonGerms; /*specifies contingency table cell frequencies*
	model  Season = dorm / design freq; /*design option can help you verify that you specified the model correctly*/
run;
quit;
