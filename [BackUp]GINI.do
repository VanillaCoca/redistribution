keep V3 AGE V5 V4 SEX MARITAL DEGREE EDUCYRS WRKST WRKTYPE WRKHRS RELIGGRP UNION V46 V69 V70 V57 V60 V61 V66 TOPBOT V21 V44 V21 V22 V23 V24 V25 V26 V27 V28 V29 V30 V31 PARTY_LR V32 V33 V34 V35 V36 V37 VOTE_LE
rename V3 RESPON_NUM
rename V5 COUNTRY
rename V4 COUNTRY_SUB
rename V46 JOBCOMP_FATHER
rename V69 FATHER_JOB
rename V70 MOTHER_JOB
rename V57 FATHER_WORK
rename V60 MOTHER_WORK
rename V61 BOOKS
rename V21 EARN_ML
rename V44 TOP_BOT
rename V33 GOV_REDUCEDIFF
rename V32 DIFF_TOOLRG
rename V35 SPENDLESS_POOR
rename V36 TAX_INCOME
rename V37 TAX_HIGHINCOME
rename V34 GOV_UNEMP
rename V66 CLASS
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

drop if DOCTOR_EARN == -98
drop if CHAIRMAN_EARN == -98
drop if SHOPASSIST_EARN == -98
drop if UNSKILL_EARN == -98
drop if CABMIN_EARN == -98
drop if DOCTOR_SH_EARN == -98
drop if CHAIRMAN_SH_EARN == -98
drop if SHOPASSIST_SH_EARN == -98
drop if UNSKILL_SH_EARN == -98
drop if CABMIN_SH_EARN == -98


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
gen gini = sumdiff*100/2*25*mu
//multiply the Gini by 100 to ease interpretation of the coefficients from the statistical models.
end
