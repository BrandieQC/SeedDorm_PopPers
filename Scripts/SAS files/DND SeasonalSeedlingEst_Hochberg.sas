data multtestsdlest;
title 'BS - Year 1 Autumn';
input test $ Raw_P;
datalines;
dndBS	0.0021
dmBS	0.0028
ndmBS	0.1566
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'BS - Year 2 Summer';
input test $ Raw_P;
datalines;
dndBS	0.0028
dmBS	0.0001
ndmBS	0.7579
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'TC - Year 1 Autumn';
input test $ Raw_P;
datalines;
dndTC	0.8476
dmTC	0.0003
ndmTC	0.0063
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'TC - Year 2 Summer';
input test $ Raw_P;
datalines;
dndTC	0.9980
dmTC	0.0001
ndmTC	0.0001
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'TC - Year 2 Autumn';
input test $ Raw_P;
datalines;
dndTC	0.0702
dmTC	0.0702
ndmTC	1.0000
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS Ctrl - Year 1 Autumn';
input test $ Raw_P;
datalines;
dndIS	0.9469
dmIS	0.0007
ndmIS	0.0010
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS Ctrl - Year 2 Summer';
input test $ Raw_P;
datalines;
dndIS	0.0001
dmIS	0.1329
ndmIS	0.0006
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS Ctrl - Year 2 Autumn';
input test $ Raw_P;
datalines;
dndIS	0.0491
dmIS	0.0002
ndmIS	0.0718
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS HH - Year 1 Autumn';
input test $ Raw_P;
datalines;
dndIS	0.0002
dmIS	0.0001
ndmIS	0.4567
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS HH - Year 2 Summer';
input test $ Raw_P;
datalines;
dndIS	0.0767
dmIS	0.0863
ndmIS	0.0070
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS HH - Year 2 Autumn';
input test $ Raw_P;
datalines;
dndIS	0.0002
dmIS	0.0059
ndmIS	0.0002
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS Soil - Year 2 Summer';
input test $ Raw_P;
datalines;
dndIS	0.0001
dmIS	0.0001
ndmIS	0.0539
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;

data multtestsdlest;
title 'IS Soil - Year 2 Autumn';
input test $ Raw_P;
datalines;
dndIS	0.5832
dmIS	0.0002
ndmIS	0.0179
;
proc multtest inpvalues=multtestsdlest holm hoc fdr;
run;
quit;
