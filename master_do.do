
// THIS IS THE MASTER DO FILE
// keep only the required variables
keep V3 AGE V5 V4 SEX MARITAL DEGREE EDUCYRS WRKST WRKTYPE WRKHRS RELIGGRP UNION V46 V69 V70 V57 V60 V61 V66 TOPBOT V21 V44 V21 V22 V23 V24 V25 V26 V27 V28 V29 V30 V31 PARTY_LR V32 V33 V34 V35 V36 V37 VOTE_LE



do "./basic_demographic.do"

do "./opinon_variable"

do "./data_merge.do"

do "./Data label and cleaning.do"

do "./model analysis"

