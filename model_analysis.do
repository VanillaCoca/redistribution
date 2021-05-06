

//summary statistics

tabstat bi_preredis std_hincome SEX married unemp religion class_mob average_growth hund_av_gdp disp_gini rel_red commun REGION s(N min mean  max sd) f(%9.4f) column(s)
asdoc tabstat  bi_preredis std_hincome SEX married unemp religion class_mob average_growth hund_av_gdp disp_gini rel_red commun REGION ,stat(mean sd p5 p50 p95 max N) format(%6.2f) c(s)

//Basic Model Specification

//generate basic probit regression
gen hund_av_gdp=average_gdp/1000

probit  bi_preredis c.std_hincome i.SEX i.married i.unemp i.religion i.class_mob

asdoc probit  bi_preredis c.std_hincome i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog, nest replace
margins, dydx(*)
asdoc probit  bi_preredis c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog, nest append
margins, dydx(*)
asdoc probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog, nest append
margins, dydx(*)

// calculate margin
probit  bi_preredis c.std_hincome i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.average_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog
margins, dydx(*) post
est store ma1
probit  bi_preredis c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.average_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog
margins, dydx(*) post
est store ma2

probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.average_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog
margins, dydx(*) post
est store ma3
outreg2 [ma1 ma2 ma3] using margin, word 
replace see word dec(3) 

estat clas

//generate probit regression with interactions

gen equal_level=.
replace equal_level=0 if disp_gini>0.5
replace equal_level=1 if disp_gini>0.4 & disp_gini<=0.5
replace equal_level=2 if disp_gini>0.3 & disp_gini<=0.4
replace equal_level=3 if disp_gini>0.2 & disp_gini<=0.3
replace equal_level=4 if disp_gini<=0.2


probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red i.REGION,nolog
est store intera1

probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.eduyear#c.average_growth c.eduyear#c.hund_av_gdp c.eduyear#c.disp_gini c.eduyear#c.rel_red i.REGION,nolog
est store intera2

probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red c.disp_gini#c.average_growth c.rel_red#c.average_growth i.REGION,nolog
est store intera3
outreg2 [intera1 intera2 intera3] using probit3, word

///
probit  bi_preredis c.std_hincome c.average_growth c.std_hincome#c.average_growth c.eduyear i.SEX i.married i.unemp i.religion i.class_mob  c.hund_av_gdp c.disp_gini c.rel_red i.commun  c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red i.REGION,nolog


margins, dydx(std_hincome) at (average_growth=(-9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9))
margins, dydx(std_hincome) at (rel_red=(-21 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11

margins, dydx(*) post
marginsplot,noci
est store interma1

probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.eduyear#c.average_growth c.eduyear#c.hund_av_gdp c.eduyear#c.disp_gini c.eduyear#c.rel_red i.REGION,nolog
margins, dydx(*) post
est store interma2

probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red c.disp_gini#c.average_growth c.rel_red#c.average_growth i.REGION,nolog
margins, dydx(*) post
est store interma3
outreg2 [interma1 interma2 interma3] using margin3, word

//margin calculation for inetractive effect
probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red c.disp_gini#c.average_growth c.rel_red#c.average_growth i.REGION,nolog
margins, dydx(average_growth) at (disp_gini=( 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63))
marginsplot,noci

margins, dydx(average_growth) at (rel_red=(-21 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11))
marginsplot,noci

margins, dydx(average_growth) at (disp_gini=( 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63))




probit  bi_preredis c.std_hincome i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog
estat clas
probit  bi_preredis c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION, nolog,
estat clas
probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun i.REGION
estat clas


probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red i.REGION
estat clas
probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.eduyear#c.average_growth c.eduyear#c.hund_av_gdp c.eduyear#c.disp_gini c.eduyear#c.rel_red i.REGION,nolog
estat clas
probit  bi_preredis c.std_hincome c.eduyear i.SEX i.married i.unemp i.religion i.class_mob c.average_growth c.hund_av_gdp c.disp_gini c.rel_red i.commun c.std_hincome#c.average_growth c.std_hincome#c.hund_av_gdp c.std_hincome#c.disp_gini c.std_hincome#c.rel_red c.disp_gini#c.average_growth c.rel_red#c.average_growth i.REGION,nolog
estat clas
