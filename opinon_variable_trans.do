tab V20

gen edu_equality=.
replace edu_equality=1 if V20==5
replace edu_equality=2 if V20==4
replace edu_equality=3 if V20==3
replace edu_equality=4 if V20==2
replace edu_equality=5 if V20==1

rename V21 income_equality

gen edu_euality=.
replace edu_equality=1 if V20==5
replace edu_equality=2 if V20==4
replace edu_equality=3 if V20==3
replace edu_equality=4 if V20==2
replace edu_equality=5 if V20==1

gen prefer_redis=.

replace prefer_redis=1 if V33==5
replace prefer_redis=2 if V33==4
replace prefer_redis=3 if V33==3
replace prefer_redis=4 if V33==2
replace prefer_redis=5 if V33==1

gen bi_preredis=.
replace bi_preredis=1 if prefer_redis>=4
replace bi_preredis=0 if prefer_redis<4
tab bi_preredis

gen prefer_unemp_help=.
replace prefer_unemp_help=1 if V34==5
replace prefer_unemp_help=2 if V34==4
replace prefer_unemp_help=3 if V34==3
replace prefer_unemp_help=4 if V34==2
replace prefer_unemp_help=5 if V34==1

rename V35 prefer_poor

gen prefer_tax=.
replace prefer_tax=1 if V36==5
replace prefer_tax=2 if V36==4
replace prefer_tax=3 if V36==3
replace prefer_tax=4 if V36==2
replace prefer_tax=5 if V36==1

gen current_tax=.
replace current_tax=1 if V37==5
replace current_tax=2 if V37==4
replace current_tax=3 if V37==3
replace current_tax=4 if V37==2
replace current_tax=5 if V37==1

tab current_tax 
tab prefer_tax
tab prefer_poor 
tab prefer_unemp_help 
tab income_equality 
tab prefer_redis 
tab edu_equality





// standardize family income for each country and construct a new variable for standardized income for all observations in a signle variable

egen	std_AR_INC =std	(	AR_INC	)	if	AR_INC	>0	&	AR_INC	<999990
egen	std_AT_INC =std	(	AT_INC 	)	if	AT_INC 	>0	&	AT_INC 	<999990
egen	std_AU_INC =std	(	AU_INC 	)	if	AU_INC 	>0	&	AU_INC 	<999990
egen	std_BE_INC =std	(	BE_INC 	)	if	BE_INC 	>0	&	BE_INC 	<999990
egen	std_BG_INC =std	(	BG_INC 	)	if	BG_INC 	>0	&	BG_INC 	<999990
egen	std_CH_INC =std	(	CH_INC 	)	if	CH_INC 	>0	&	CH_INC 	<999990
egen	std_CL_INC =std	(	CL_INC 	)	if	CL_INC 	>0	&	CL_INC 	<999990
egen	std_CN_INC =std	(	CN_INC 	)	if	CN_INC 	>0	&	CN_INC 	<999990
egen	std_CY_INC =std	(	CY_INC 	)	if	CY_INC 	>0	&	CY_INC 	<999990
egen	std_CZ_INC =std	(	CZ_INC 	)	if	CZ_INC 	>0	&	CZ_INC 	<999990
egen	std_DE_INC =std	(	DE_INC 	)	if	DE_INC 	>0	&	DE_INC 	<999990
egen	std_DK_INC =std	(	DK_INC 	)	if	DK_INC 	>0	&	DK_INC 	<999990
egen	std_EE_INC =std	(	EE_INC 	)	if	EE_INC 	>0	&	EE_INC 	<999990
egen	std_ES_INC =std	(	ES_INC 	)	if	ES_INC 	>0	&	ES_INC 	<999990
egen	std_FI_INC =std	(	FI_INC 	)	if	FI_INC 	>0	&	FI_INC 	<999990
egen	std_FR_INC =std	(	FR_INC 	)	if	FR_INC 	>0	&	FR_INC 	<999990
egen	std_GB_INC =std	(	GB_INC 	)	if	GB_INC 	>0	&	GB_INC 	<999990
egen	std_HR_INC =std	(	HR_INC 	)	if	HR_INC 	>0	&	HR_INC 	<999990
egen	std_HU_INC =std	(	HU_INC 	)	if	HU_INC 	>0	&	HU_INC 	<999990
egen	std_IL_INC =std	(	IL_INC 	)	if	IL_INC 	>0	&	IL_INC 	<999990
egen	std_IS_INC =std	(	IS_INC 	)	if	IS_INC 	>0	&	IS_INC 	<999990
egen	std_IT_INC =std	(	IT_INC 	)	if	IT_INC 	>0	&	IT_INC 	<999990
egen	std_JP_INC =std	(	JP_INC 	)	if	JP_INC 	>0	&	JP_INC 	<999990
egen	std_KR_INC =std	(	KR_INC 	)	if	KR_INC 	>0	&	KR_INC 	<999990
egen	std_LT_INC =std	(	LT_INC 	)	if	LT_INC 	>0	&	LT_INC 	<999990
egen	std_LV_INC =std	(	LV_INC 	)	if	LV_INC 	>0	&	LV_INC 	<999990
egen	std_NO_INC =std	(	NO_INC 	)	if	NO_INC 	>0	&	NO_INC 	<999990
egen	std_NZ_INC =std	(	NZ_INC 	)	if	NZ_INC 	>0	&	NZ_INC 	<999990
egen	std_PH_INC =std	(	PH_INC 	)	if	PH_INC 	>0	&	PH_INC 	<999990
egen	std_PL_INC =std	(	PL_INC 	)	if	PL_INC 	>0	&	PL_INC 	<999990
egen	std_PT_INC =std	(	PT_INC 	)	if	PT_INC 	>0	&	PT_INC 	<999990
egen	std_RU_INC =std	(	RU_INC 	)	if	RU_INC 	>0	&	RU_INC 	<999990
egen	std_SE_INC =std	(	SE_INC 	)	if	SE_INC 	>0	&	SE_INC 	<999990
egen	std_SI_INC =std	(	SI_INC 	)	if	SI_INC 	>0	&	SI_INC 	<999990
egen	std_SK_INC =std	(	SK_INC 	)	if	SK_INC 	>0	&	SK_INC 	<999990
egen	std_TR_INC =std	(	TR_INC 	)	if	TR_INC 	>0	&	TR_INC 	<999990
egen	std_TW_INC =std	(	TW_INC 	)	if	TW_INC 	>0	&	TW_INC 	<999990
egen	std_UA_INC =std	(	UA_INC 	)	if	UA_INC 	>0	&	UA_INC 	<999990
egen	std_US_INC =std	(	US_INC 	)	if	US_INC 	>0	&	US_INC 	<999990
egen	std_VE_INC =std	(	VE_INC 	)	if	VE_INC 	>0	&	VE_INC 	<999990
egen	std_ZA_INC =std	(	ZA_INC	)	if	ZA_INC	>0	&	ZA_INC	<999990

egen std_hincome=rowmax(std_AR_INC std_AT_INC std_AU_INC std_BE_INC std_BG_INC std_CH_INC std_CL_INC std_CN_INC std_CY_INC std_CZ_INC std_DE_INC std_DK_INC std_EE_INC std_ES_INC std_FI_INC std_FR_INC std_GB_INC std_HR_INC std_HU_INC std_IL_INC std_IS_INC std_IT_INC std_JP_INC std_KR_INC std_LT_INC std_LV_INC std_NO_INC std_NZ_INC std_PH_INC std_PL_INC std_PT_INC std_RU_INC std_SE_INC std_SI_INC std_SK_INC std_TR_INC std_TW_INC std_UA_INC std_US_INC std_VE_INC std_ZA_INC)


//generate variable to indicate whether a country is communist or not
gen commun=.
replace commun=	0	if V4==		36
replace commun=	0	if V4==		40
replace commun=	1	if V4==		100
replace commun=	0	if V4==		152
replace commun=	1	if V4==		156
replace commun=	0	if V4==		158
replace commun=	1	if V4==		191
replace commun=	0	if V4==		196
replace commun=	1	if V4==		203
replace commun=	0	if V4==		208
replace commun=	1	if V4==		233
replace commun=	0	if V4==		246
replace commun=	0	if V4==		250
replace commun=	1	if V4==		348
replace commun=	0	if V4==		352
replace commun=	0	if V4==		376
replace commun=	0	if V4==		380
replace commun=	0	if V4==		392
replace commun=	0	if V4==		410
replace commun=	1	if V4==		428
replace commun=	1	if V4==		440
replace commun=	0	if V4==		554
replace commun=	0	if V4==		578
replace commun=	0	if V4==		608
replace commun=	1	if V4==		616
replace commun=	0	if V4==		620
replace commun=	1	if V4==		643
replace commun=	1	if V4==		703
replace commun=	1	if V4==		705
replace commun=	0	if V4==		710
replace commun=	0	if V4==		724
replace commun=	0	if V4==		752
replace commun=	0	if V4==		756
replace commun=	0	if V4==		792
replace commun=	1	if V4==		804
replace commun=	0	if V4==		840
replace commun=	0	if V4==		862
replace commun=	0	if V4==		5601
replace commun=	0	if V4==		27601
replace commun=	1	if V4==		27602
replace commun=	0	if V4==		82601
tab commun

///
rename V22 DOCTOR_EARN
rename V23 CHAIRMAN_EARN
rename V24 SHOPASSIST_EARN
rename V25 UNSKILL_EARN
rename V26 CABMIN_EARN
rename V27 DOCTOR_SH_EARN
rename V28 CHAIRMAN_SH_EARN
rename V29 SHOPASSIST_SH_EARN
rename V30 UNSKILL_SH_EARN
rename V31 CABMIN_SH_EARN

drop if DOCTOR_EARN == -98 | DOCTOR_EARN == -99
drop if CHAIRMAN_EARN == -98 | CHAIRMAN_EARN == -99
drop if SHOPASSIST_EARN == -98| SHOPASSIST_EARN == -99
drop if UNSKILL_EARN == -98 | UNSKILL_EARN == -99
drop if CABMIN_EARN == -98 | CABMIN_EARN == -99
drop if DOCTOR_SH_EARN == -98 | DOCTOR_SH_EARN == -99
drop if CHAIRMAN_SH_EARN == -98 | CHAIRMAN_SH_EARN == -99
drop if SHOPASSIST_SH_EARN == -98 | SHOPASSIST_SH_EARN == -99
drop if UNSKILL_SH_EARN == -98 | UNSKILL_SH_EARN == -99
drop if CABMIN_SH_EARN == -98 | CABMIN_SH_EARN == -99


//Program of calculating Gini coefficient
cap program drop ginipro 	// drop the program "ginipro" if it already exist
program ginipro				// initialize the program "ginipro"
gen mu = (DOCTOR_SH_EARN + CHAIRMAN_SH_EARN + SHOPASSIST_SH_EARN + UNSKILL_SH_EARN + CABMIN_SH_EARN)/5
gen diff1 = abs(DOCTOR_SH_EARN - CHAIRMAN_SH_EARN)
gen diff2 = abs(DOCTOR_SH_EARN - SHOPASSIST_SH_EARN)
gen diff3 = abs(DOCTOR_SH_EARN - UNSKILL_SH_EARN)
gen diff4 = abs(DOCTOR_SH_EARN - CABMIN_SH_EARN)
gen diff5 = abs(CHAIRMAN_SH_EARN - SHOPASSIST_SH_EARN)
gen diff6 = abs(CHAIRMAN_SH_EARN - UNSKILL_SH_EARN)
gen diff7 = abs(CHAIRMAN_SH_EARN - CABMIN_SH_EARN)
gen diff8 = abs(SHOPASSIST_SH_EARN - UNSKILL_SH_EARN)
gen diff9 = abs(SHOPASSIST_SH_EARN - CABMIN_SH_EARN)
gen diffX = abs(UNSKILL_SH_EARN - CABMIN_SH_EARN)
gen sumdiff = diff1 + diff2 + diff3 + diff4 + diff5 + diff6 + diff7 + diff8 + diff9 + diffX
gen gini = sumdiff*100/(2*25*mu)
//multiply the Gini by 100 to ease interpretation of the coefficients from the statistical models.
end
