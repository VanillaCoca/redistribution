rename V57 FATHER_WORK
rename V60 MOTHER_WORK

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
