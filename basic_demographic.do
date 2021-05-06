
//recode gender that not reported in the data as missing value
replace SEX=. if SEX==9


//recode marital status into two type: married or not
gen married=.
replace married=1 if MARITAL==1
replace married=0 if MARITAL>=2 & MARITAL<=5

//recode education year, set education year for people who are still at school as the year that they take to obtain their current highest degree
gen edudegree=.
replace edudegree=DEGREE if DEGREE<=5


gen eduyear=.
replace eduyear=EDUCYRS if EDUCYRS<=81
replace eduyear=15 if EDUCYRS==96
replace eduyear=0 if EDUCYRS==97


//mark unemployed as 1 and the other employment status as 0
gen unemp=0
replace unemp=1 if WRKST==5

//religion
gen religion=.
replace religion=1 if RELIGGRP>1 & RELIGGRP<11
replace religion=0 if RELIGGRP==1

rename V57 FATHER_WORK
rename V60 MOTHER_WORK


// code R's social class from occupation 
summ ISCO88

gen social_class=.

replace social_class=4 if ISCO88>=1000 & ISCO88<2000 //coding  manager as 4//
replace social_class=3 if ISCO88>=2000 & ISCO88<3000 // coding professionals as 3//
replace social_class=2 if ISCO88>=3000 & ISCO88<=4500 //coding clearks as 2//
replace social_class=1 if ISCO88>=5000 & ISCO88<=9333 //coding worker as 1
tab social_class

gen f_social_class=.

replace f_social_class=4 if FATHER_WORK>=1000 & FATHER_WORK<2000 //coding  manager as 4//
replace f_social_class=3 if FATHER_WORK>=2000 & FATHER_WORK<3000 // coding professionals as 3//
replace f_social_class=2 if FATHER_WORK>=3000 & FATHER_WORK<=4500 //coding clearks as 2//
replace f_social_class=1 if FATHER_WORK>=5000 & FATHER_WORK<=9333 //coding worker as 1//
tab f_social_class

gen m_social_class=.
replace m_social_class=4 if MOTHER_WORK>=1000 & MOTHER_WORK<2000 
replace m_social_class=3 if MOTHER_WORK>=2000 & MOTHER_WORK<3000 
replace m_social_class=2 if MOTHER_WORK>=3000 & MOTHER_WORK<=4500 
replace m_social_class=1 if MOTHER_WORK>=5000 & MOTHER_WORK<=9333 
tab m_social_class

egen fam_class=rowmax(f_social_class m_social_class)
gen class_mob =0
replace class_mob=1 if social_class>fam_class



