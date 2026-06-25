data dppfd;
input date $ block $ col $ row $ trt $ time $ sample $ ppfd;
title 'DND PPFD';
sppfd = sqrt(ppfd);
lppfd = log(ppfd);
llppfd = log10(ppfd);
datalines;
9/10/2021	1	B	2	HighHumid	1:14	1	1133
9/10/2021	1	B	2	HighHumid	1:16	2	1261
9/10/2021	1	B	2	HighHumid	1:17	3	1010
9/10/2021	1	B	2	HighHumid	1:18	4	932
9/10/2021	1	C	2	Control	1:19	1	2110
9/10/2021	1	C	2	Control	1:20	2	603
9/10/2021	1	C	2	Control	1:21	3	1191
9/10/2021	1	C	2	Control	1:22	4	721
9/10/2021	2	D	5	HighHumid	1:22	1	921
9/10/2021	2	D	5	HighHumid	1:23	2	450
9/10/2021	2	D	5	HighHumid	1:25	3	605
9/10/2021	2	D	5	HighHumid	1:25	4	2164
9/10/2021	2	E	8	Control	1:26	1	1905
9/10/2021	2	E	8	Control	1:27	2	1134
9/10/2021	2	E	8	Control	1:28	3	1218
9/10/2021	2	E	8	Control	1:29	4	1250
9/10/2021	3	C	10	HighHumid	1:31	1	1036
9/10/2021	3	C	10	HighHumid	1:33	2	1805
9/10/2021	3	C	10	HighHumid	1:33	3	1105
9/10/2021	3	C	10	HighHumid	1:34	4	533
9/10/2021	3	A	12	Control	1:34	1	1780
9/10/2021	3	A	12	Control	1:35	2	492
9/10/2021	3	A	12	Control	1:36	3	827
9/10/2021	3	A	12	Control	1:37	4	342
9/10/2021	4	F	3	HighHumid	1:38	1	2212
9/10/2021	4	F	3	HighHumid	1:41	2	1250
9/10/2021	4	F	3	HighHumid	1:42	3	1141
9/10/2021	4	F	3	HighHumid	1:42	4	541
9/10/2021	4	H	1	Control	1:43	1	1802
9/10/2021	4	H	1	Control	1:43	2	664
9/10/2021	4	H	1	Control	1:43	3	1153
9/10/2021	4	H	1	Control	1:44	4	535
9/10/2021	5	I	7	HighHumid	1:45	1	1243
9/10/2021	5	I	7	HighHumid	1:45	2	672
9/10/2021	5	I	7	HighHumid	1:46	3	864
9/10/2021	5	I	7	HighHumid	1:47	4	566
9/10/2021	5	J	8	Control	1:49	1	1824
9/10/2021	5	J	8	Control	1:49	2	1345
9/10/2021	5	J	8	Control	1:49	3	372
9/10/2021	5	J	8	Control	1:49	4	1068
9/10/2021	6	H	10	HighHumid	1:51	1	1644
9/10/2021	6	H	10	HighHumid	1:53	2	2104
9/10/2021	6	H	10	HighHumid	1:54	3	967
9/10/2021	6	H	10	HighHumid	1:54	4	795
9/10/2021	6	H	11	Control	1:55	1	1905
9/10/2021	6	H	11	Control	1:55	2	2005
9/10/2021	6	H	11	Control	1:55	3	545
9/10/2021	6	H	11	Control	1:56	4	710
9/10/2021	7	K	5	HighHumid	1:57	1	1031
9/10/2021	7	K	5	HighHumid	1:57	2	538
9/10/2021	7	K	5	HighHumid	1:58	3	1015
9/10/2021	7	K	5	HighHumid	1:59	4	1079
9/10/2021	7	K	4	Control	1:59	1	2005
9/10/2021	7	K	4	Control	1:59	2	445
9/10/2021	7	K	4	Control	2:00	3	1191
9/10/2021	7	K	4	Control	2:00	4	752
9/10/2021	8	K	11	HighHumid	2:01	1	865
9/10/2021	8	K	11	HighHumid	2:01	2	1113
9/10/2021	8	K	11	HighHumid	2:02	3	1304
9/10/2021	8	K	11	HighHumid	2:02	4	1230
9/10/2021	8	L	11	Control	2:03	1	1868
9/10/2021	8	L	11	Control	2:03	2	603
9/10/2021	8	L	11	Control	2:03	3	1024
9/10/2021	8	L	11	Control	2:04	4	1141
;
proc univariate plot normal;
	var ppfd sppfd lppfd llppfd;
	/*log transformation the bst, not perfect*/
proc sort;
	by trt;
proc means n mean stderr var;
	var ppfd;
	by trt;
proc mixed;
	class block trt;
	model lppfd = trt;
	random block;
run;
quit;
