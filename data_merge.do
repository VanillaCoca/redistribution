//Deal with income inequality national level data //

keep if year>=2007 & year<=2009

egen av_gini_disp=rowmean(_1_gini_disp _2_gini_disp _3_gini_disp _4_gini_disp _5_gini_disp _6_gini_disp _7_gini_disp _8_gini_disp _9_gini_disp _10_gini_disp _11_gini_disp _12_gini_disp _13_gini_disp _14_gini_disp _15_gini_disp _16_gini_disp _17_gini_disp _18_gini_disp _19_gini_disp _20_gini_disp _21_gini_disp _22_gini_disp _23_gini_disp _24_gini_disp _25_gini_disp _26_gini_disp _27_gini_disp _28_gini_disp _29_gini_disp _30_gini_disp _31_gini_disp _32_gini_disp _33_gini_disp _34_gini_disp _35_gini_disp _36_gini_disp _37_gini_disp _38_gini_disp _39_gini_disp _40_gini_disp _41_gini_disp _42_gini_disp _43_gini_disp _44_gini_disp _45_gini_disp _46_gini_disp _47_gini_disp _48_gini_disp _49_gini_disp _50_gini_disp _51_gini_disp _52_gini_disp _53_gini_disp _54_gini_disp _55_gini_disp _56_gini_disp _57_gini_disp _58_gini_disp _59_gini_disp _60_gini_disp _61_gini_disp _62_gini_disp _63_gini_disp _64_gini_disp _65_gini_disp _66_gini_disp _67_gini_disp _68_gini_disp _69_gini_disp _70_gini_disp _71_gini_disp _72_gini_disp _73_gini_disp _74_gini_disp _75_gini_disp _76_gini_disp _77_gini_disp _78_gini_disp _79_gini_disp _80_gini_disp _81_gini_disp _82_gini_disp _83_gini_disp _84_gini_disp _85_gini_disp _86_gini_disp _87_gini_disp _88_gini_disp _89_gini_disp _90_gini_disp _91_gini_disp _92_gini_disp _93_gini_disp _94_gini_disp _95_gini_disp _96_gini_disp _97_gini_disp _98_gini_disp _99_gini_disp _100_gini_disp)

drop _1_gini_disp _2_gini_disp _3_gini_disp _4_gini_disp _5_gini_disp _6_gini_disp _7_gini_disp _8_gini_disp _9_gini_disp _10_gini_disp _11_gini_disp _12_gini_disp _13_gini_disp _14_gini_disp _15_gini_disp _16_gini_disp _17_gini_disp _18_gini_disp _19_gini_disp _20_gini_disp _21_gini_disp _22_gini_disp _23_gini_disp _24_gini_disp _25_gini_disp _26_gini_disp _27_gini_disp _28_gini_disp _29_gini_disp _30_gini_disp _31_gini_disp _32_gini_disp _33_gini_disp _34_gini_disp _35_gini_disp _36_gini_disp _37_gini_disp _38_gini_disp _39_gini_disp _40_gini_disp _41_gini_disp _42_gini_disp _43_gini_disp _44_gini_disp _45_gini_disp _46_gini_disp _47_gini_disp _48_gini_disp _49_gini_disp _50_gini_disp _51_gini_disp _52_gini_disp _53_gini_disp _54_gini_disp _55_gini_disp _56_gini_disp _57_gini_disp _58_gini_disp _59_gini_disp _60_gini_disp _61_gini_disp _62_gini_disp _63_gini_disp _64_gini_disp _65_gini_disp _66_gini_disp _67_gini_disp _68_gini_disp _69_gini_disp _70_gini_disp _71_gini_disp _72_gini_disp _73_gini_disp _74_gini_disp _75_gini_disp _76_gini_disp _77_gini_disp _78_gini_disp _79_gini_disp _80_gini_disp _81_gini_disp _82_gini_disp _83_gini_disp _84_gini_disp _85_gini_disp _86_gini_disp _87_gini_disp _88_gini_disp _89_gini_disp _90_gini_disp _91_gini_disp _92_gini_disp _93_gini_disp _94_gini_disp _95_gini_disp _96_gini_disp _97_gini_disp _98_gini_disp _99_gini_disp _100_gini_disp

egen av_gini_mkt=rowmean(_1_gini_mkt _2_gini_mkt _3_gini_mkt _4_gini_mkt _5_gini_mkt _6_gini_mkt _7_gini_mkt _8_gini_mkt _9_gini_mkt _10_gini_mkt _11_gini_mkt _12_gini_mkt _13_gini_mkt _14_gini_mkt _15_gini_mkt _16_gini_mkt _17_gini_mkt _18_gini_mkt _19_gini_mkt _20_gini_mkt _21_gini_mkt _22_gini_mkt _23_gini_mkt _24_gini_mkt _25_gini_mkt _26_gini_mkt _27_gini_mkt _28_gini_mkt _29_gini_mkt _30_gini_mkt _31_gini_mkt _32_gini_mkt _33_gini_mkt _34_gini_mkt _35_gini_mkt _36_gini_mkt _37_gini_mkt _38_gini_mkt _39_gini_mkt _40_gini_mkt _41_gini_mkt _42_gini_mkt _43_gini_mkt _44_gini_mkt _45_gini_mkt _46_gini_mkt _47_gini_mkt _48_gini_mkt _49_gini_mkt _50_gini_mkt _51_gini_mkt _52_gini_mkt _53_gini_mkt _54_gini_mkt _55_gini_mkt _56_gini_mkt _57_gini_mkt _58_gini_mkt _59_gini_mkt _60_gini_mkt _61_gini_mkt _62_gini_mkt _63_gini_mkt _64_gini_mkt _65_gini_mkt _66_gini_mkt _67_gini_mkt _68_gini_mkt _69_gini_mkt _70_gini_mkt _71_gini_mkt _72_gini_mkt _73_gini_mkt _74_gini_mkt _75_gini_mkt _76_gini_mkt _77_gini_mkt _78_gini_mkt _79_gini_mkt _80_gini_mkt _81_gini_mkt _82_gini_mkt _83_gini_mkt _84_gini_mkt _85_gini_mkt _86_gini_mkt _87_gini_mkt _88_gini_mkt _89_gini_mkt _90_gini_mkt _91_gini_mkt _92_gini_mkt _93_gini_mkt _94_gini_mkt _95_gini_mkt _96_gini_mkt _97_gini_mkt _98_gini_mkt _99_gini_mkt _100_gini_mkt)

drop _1_gini_mkt _2_gini_mkt _3_gini_mkt _4_gini_mkt _5_gini_mkt _6_gini_mkt _7_gini_mkt _8_gini_mkt _9_gini_mkt _10_gini_mkt _11_gini_mkt _12_gini_mkt _13_gini_mkt _14_gini_mkt _15_gini_mkt _16_gini_mkt _17_gini_mkt _18_gini_mkt _19_gini_mkt _20_gini_mkt _21_gini_mkt _22_gini_mkt _23_gini_mkt _24_gini_mkt _25_gini_mkt _26_gini_mkt _27_gini_mkt _28_gini_mkt _29_gini_mkt _30_gini_mkt _31_gini_mkt _32_gini_mkt _33_gini_mkt _34_gini_mkt _35_gini_mkt _36_gini_mkt _37_gini_mkt _38_gini_mkt _39_gini_mkt _40_gini_mkt _41_gini_mkt _42_gini_mkt _43_gini_mkt _44_gini_mkt _45_gini_mkt _46_gini_mkt _47_gini_mkt _48_gini_mkt _49_gini_mkt _50_gini_mkt _51_gini_mkt _52_gini_mkt _53_gini_mkt _54_gini_mkt _55_gini_mkt _56_gini_mkt _57_gini_mkt _58_gini_mkt _59_gini_mkt _60_gini_mkt _61_gini_mkt _62_gini_mkt _63_gini_mkt _64_gini_mkt _65_gini_mkt _66_gini_mkt _67_gini_mkt _68_gini_mkt _69_gini_mkt _70_gini_mkt _71_gini_mkt _72_gini_mkt _73_gini_mkt _74_gini_mkt _75_gini_mkt _76_gini_mkt _77_gini_mkt _78_gini_mkt _79_gini_mkt _80_gini_mkt _81_gini_mkt _82_gini_mkt _83_gini_mkt _84_gini_mkt _85_gini_mkt _86_gini_mkt _87_gini_mkt _88_gini_mkt _89_gini_mkt _90_gini_mkt _91_gini_mkt _92_gini_mkt _93_gini_mkt _94_gini_mkt _95_gini_mkt _96_gini_mkt _97_gini_mkt _98_gini_mkt _99_gini_mkt _100_gini_mkt

egen av_abs_red=rowmean(_1_abs_red _2_abs_red _3_abs_red _4_abs_red _5_abs_red _6_abs_red _7_abs_red _8_abs_red _9_abs_red _10_abs_red _11_abs_red _12_abs_red _13_abs_red _14_abs_red _15_abs_red _16_abs_red _17_abs_red _18_abs_red _19_abs_red _20_abs_red _21_abs_red _22_abs_red _23_abs_red _24_abs_red _25_abs_red _26_abs_red _27_abs_red _28_abs_red _29_abs_red _30_abs_red _31_abs_red _32_abs_red _33_abs_red _34_abs_red _35_abs_red _36_abs_red _37_abs_red _38_abs_red _39_abs_red _40_abs_red _41_abs_red _42_abs_red _43_abs_red _44_abs_red _45_abs_red _46_abs_red _47_abs_red _48_abs_red _49_abs_red _50_abs_red _51_abs_red _52_abs_red _53_abs_red _54_abs_red _55_abs_red _56_abs_red _57_abs_red _58_abs_red _59_abs_red _60_abs_red _61_abs_red _62_abs_red _63_abs_red _64_abs_red _65_abs_red _66_abs_red _67_abs_red _68_abs_red _69_abs_red _70_abs_red _71_abs_red _72_abs_red _73_abs_red _74_abs_red _75_abs_red _76_abs_red _77_abs_red _78_abs_red _79_abs_red _80_abs_red _81_abs_red _82_abs_red _83_abs_red _84_abs_red _85_abs_red _86_abs_red _87_abs_red _88_abs_red _89_abs_red _90_abs_red _91_abs_red _92_abs_red _93_abs_red _94_abs_red _95_abs_red _96_abs_red _97_abs_red _98_abs_red _99_abs_red _100_abs_red)

drop _1_abs_red _2_abs_red _3_abs_red _4_abs_red _5_abs_red _6_abs_red _7_abs_red _8_abs_red _9_abs_red _10_abs_red _11_abs_red _12_abs_red _13_abs_red _14_abs_red _15_abs_red _16_abs_red _17_abs_red _18_abs_red _19_abs_red _20_abs_red _21_abs_red _22_abs_red _23_abs_red _24_abs_red _25_abs_red _26_abs_red _27_abs_red _28_abs_red _29_abs_red _30_abs_red _31_abs_red _32_abs_red _33_abs_red _34_abs_red _35_abs_red _36_abs_red _37_abs_red _38_abs_red _39_abs_red _40_abs_red _41_abs_red _42_abs_red _43_abs_red _44_abs_red _45_abs_red _46_abs_red _47_abs_red _48_abs_red _49_abs_red _50_abs_red _51_abs_red _52_abs_red _53_abs_red _54_abs_red _55_abs_red _56_abs_red _57_abs_red _58_abs_red _59_abs_red _60_abs_red _61_abs_red _62_abs_red _63_abs_red _64_abs_red _65_abs_red _66_abs_red _67_abs_red _68_abs_red _69_abs_red _70_abs_red _71_abs_red _72_abs_red _73_abs_red _74_abs_red _75_abs_red _76_abs_red _77_abs_red _78_abs_red _79_abs_red _80_abs_red _81_abs_red _82_abs_red _83_abs_red _84_abs_red _85_abs_red _86_abs_red _87_abs_red _88_abs_red _89_abs_red _90_abs_red _91_abs_red _92_abs_red _93_abs_red _94_abs_red _95_abs_red _96_abs_red _97_abs_red _98_abs_red _99_abs_red _100_abs_red

egen av_rel_red=rowmean(_1_rel_red _2_rel_red _3_rel_red _4_rel_red _5_rel_red _6_rel_red _7_rel_red _8_rel_red _9_rel_red _10_rel_red _11_rel_red _12_rel_red _13_rel_red _14_rel_red _15_rel_red _16_rel_red _17_rel_red _18_rel_red _19_rel_red _20_rel_red _21_rel_red _22_rel_red _23_rel_red _24_rel_red _25_rel_red _26_rel_red _27_rel_red _28_rel_red _29_rel_red _30_rel_red _31_rel_red _32_rel_red _33_rel_red _34_rel_red _35_rel_red _36_rel_red _37_rel_red _38_rel_red _39_rel_red _40_rel_red _41_rel_red _42_rel_red _43_rel_red _44_rel_red _45_rel_red _46_rel_red _47_rel_red _48_rel_red _49_rel_red _50_rel_red _51_rel_red _52_rel_red _53_rel_red _54_rel_red _55_rel_red _56_rel_red _57_rel_red _58_rel_red _59_rel_red _60_rel_red _61_rel_red _62_rel_red _63_rel_red _64_rel_red _65_rel_red _66_rel_red _67_rel_red _68_rel_red _69_rel_red _70_rel_red _71_rel_red _72_rel_red _73_rel_red _74_rel_red _75_rel_red _76_rel_red _77_rel_red _78_rel_red _79_rel_red _80_rel_red _81_rel_red _82_rel_red _83_rel_red _84_rel_red _85_rel_red _86_rel_red _87_rel_red _88_rel_red _89_rel_red _90_rel_red _91_rel_red _92_rel_red _93_rel_red _94_rel_red _95_rel_red _96_rel_red _97_rel_red _98_rel_red _99_rel_red _100_rel_red)

drop _1_rel_red _2_rel_red _3_rel_red _4_rel_red _5_rel_red _6_rel_red _7_rel_red _8_rel_red _9_rel_red _10_rel_red _11_rel_red _12_rel_red _13_rel_red _14_rel_red _15_rel_red _16_rel_red _17_rel_red _18_rel_red _19_rel_red _20_rel_red _21_rel_red _22_rel_red _23_rel_red _24_rel_red _25_rel_red _26_rel_red _27_rel_red _28_rel_red _29_rel_red _30_rel_red _31_rel_red _32_rel_red _33_rel_red _34_rel_red _35_rel_red _36_rel_red _37_rel_red _38_rel_red _39_rel_red _40_rel_red _41_rel_red _42_rel_red _43_rel_red _44_rel_red _45_rel_red _46_rel_red _47_rel_red _48_rel_red _49_rel_red _50_rel_red _51_rel_red _52_rel_red _53_rel_red _54_rel_red _55_rel_red _56_rel_red _57_rel_red _58_rel_red _59_rel_red _60_rel_red _61_rel_red _62_rel_red _63_rel_red _64_rel_red _65_rel_red _66_rel_red _67_rel_red _68_rel_red _69_rel_red _70_rel_red _71_rel_red _72_rel_red _73_rel_red _74_rel_red _75_rel_red _76_rel_red _77_rel_red _78_rel_red _79_rel_red _80_rel_red _81_rel_red _82_rel_red _83_rel_red _84_rel_red _85_rel_red _86_rel_red _87_rel_red _88_rel_red _89_rel_red _90_rel_red _91_rel_red _92_rel_red _93_rel_red _94_rel_red _95_rel_red _96_rel_red _97_rel_red _98_rel_red _99_rel_red _100_rel_red


gen	countrycode= 410	if	country=="Korea"
keep if countrycode==410

//Dealing with growth per capita data//

gen countrycode=.
replace	countrycode=	32	if	country=="Argentina"
replace	countrycode=	36	if	country=="Australia"
replace	countrycode=	40	if	country=="Austria"
replace	countrycode=	100	if	country=="Bulgaria"
replace	countrycode=	152	if	country=="Chile"
replace	countrycode=	156	if	country=="China"
replace	countrycode=	158	if	country=="Taiwan"
replace	countrycode=	191	if	country=="Croatia"
replace	countrycode=	196	if	country=="Cyprus"
replace	countrycode=	203	if	country=="Czech Republic"
replace	countrycode=	208	if	country=="Denmark"
replace	countrycode=	233	if	country=="Estonia"
replace	countrycode=	246	if	country=="Finland"
replace	countrycode=	250	if	country=="France"
replace	countrycode=	348	if	country=="Hungary"
replace	countrycode=	352	if	country=="Iceland"
replace	countrycode=	376	if	country=="Israel"
replace	countrycode=	380	if	country=="Italy"
replace	countrycode=	392	if	country=="Japan"
replace	countrycode=	410	if	country=="Korea, Rep."
replace	countrycode=	428	if	country=="Latvia"
replace	countrycode=	440	if	country=="Lithuania"
replace	countrycode=	554	if	country=="New Zealand"
replace	countrycode=	578	if	country=="Norway"
replace	countrycode=	608	if	country=="Philippines"
replace	countrycode=	616	if	country=="Poland"
replace	countrycode=	620	if	country=="Portugal"
replace	countrycode=	643	if	country=="Russian Federation"
replace	countrycode=	703	if	country=="Slovak Republic"
replace	countrycode=	705	if	country=="Slovenia"
replace	countrycode=	710	if	country=="South Africa"
replace	countrycode=	724	if	country=="Spain"
replace	countrycode=	752	if	country=="Sweden"
replace	countrycode=	756	if	country=="Switzerland"
replace	countrycode=	792	if	country=="Turkey"
replace	countrycode=	804	if	country=="Ukraine"
replace	countrycode=	840	if	country=="United States"
replace	countrycode=	862	if	country=="Venezuela, RB"
replace	countrycode=	27601	if	country=="Germany"
replace	countrycode=	82601	if	country=="United Kingdom"

tab country if countrycode!=.

drop if countrycode==.
sort countrycode

//Dealing with country level GDP per capita data//
gen countrycode=.
replace	countrycode=	32	if	country=="Argentina"
replace	countrycode=	36	if	country=="Australia"
replace	countrycode=	40	if	country=="Austria"
replace	countrycode=	100	if	country=="Bulgaria"
replace	countrycode=	152	if	country=="Chile"
replace	countrycode=	156	if	country=="China"
replace	countrycode=	158	if	country=="Taiwan"
replace	countrycode=	191	if	country=="Croatia"
replace	countrycode=	196	if	country=="Cyprus"
replace	countrycode=	203	if	country=="Czech Republic"
replace	countrycode=	208	if	country=="Denmark"
replace	countrycode=	233	if	country=="Estonia"
replace	countrycode=	246	if	country=="Finland"
replace	countrycode=	250	if	country=="France"
replace	countrycode=	348	if	country=="Hungary"
replace	countrycode=	352	if	country=="Iceland"
replace	countrycode=	376	if	country=="Israel"
replace	countrycode=	380	if	country=="Italy"
replace	countrycode=	392	if	country=="Japan"
replace	countrycode=	410	if	country=="Korea, Rep."
replace	countrycode=	428	if	country=="Latvia"
replace	countrycode=	440	if	country=="Lithuania"
replace	countrycode=	554	if	country=="New Zealand"
replace	countrycode=	578	if	country=="Norway"
replace	countrycode=	608	if	country=="Philippines"
replace	countrycode=	616	if	country=="Poland"
replace	countrycode=	620	if	country=="Portugal"
replace	countrycode=	643	if	country=="Russian Federation"
replace	countrycode=	703	if	country=="Slovak Republic"
replace	countrycode=	705	if	country=="Slovenia"
replace	countrycode=	710	if	country=="South Africa"
replace	countrycode=	724	if	country=="Spain"
replace	countrycode=	752	if	country=="Sweden"
replace	countrycode=	756	if	country=="Switzerland"
replace	countrycode=	792	if	country=="Turkey"
replace	countrycode=	804	if	country=="Ukraine"
replace	countrycode=	840	if	country=="United States"
replace	countrycode=	862	if	country=="Venezuela, RB"
replace	countrycode=	27601	if	country=="Germany"
replace	countrycode=	82601	if	country=="United Kingdom"

tab country if countrycode!=.
drop if countrycode==.
sort countrycode

drop B C D E F
//Dealing with government consumption data//
gen countrycode=.
rename CountryName country
replace	countrycode=	32	if	country=="Argentina"
replace	countrycode=	36	if	country=="Australia"
replace	countrycode=	40	if	country=="Austria"
replace	countrycode=	100	if	country=="Bulgaria"
replace	countrycode=	152	if	country=="Chile"
replace	countrycode=	156	if	country=="China"
replace	countrycode=	158	if	country=="Taiwan"
replace	countrycode=	191	if	country=="Croatia"
replace	countrycode=	196	if	country=="Cyprus"
replace	countrycode=	203	if	country=="Czech Republic"
replace	countrycode=	208	if	country=="Denmark"
replace	countrycode=	233	if	country=="Estonia"
replace	countrycode=	246	if	country=="Finland"
replace	countrycode=	250	if	country=="France"
replace	countrycode=	348	if	country=="Hungary"
replace	countrycode=	352	if	country=="Iceland"
replace	countrycode=	376	if	country=="Israel"
replace	countrycode=	380	if	country=="Italy"
replace	countrycode=	392	if	country=="Japan"
replace	countrycode=	410	if	country=="Korea, Rep."
replace	countrycode=	428	if	country=="Latvia"
replace	countrycode=	440	if	country=="Lithuania"
replace	countrycode=	554	if	country=="New Zealand"
replace	countrycode=	578	if	country=="Norway"
replace	countrycode=	608	if	country=="Philippines"
replace	countrycode=	616	if	country=="Poland"
replace	countrycode=	620	if	country=="Portugal"
replace	countrycode=	643	if	country=="Russian Federation"
replace	countrycode=	703	if	country=="Slovak Republic"
replace	countrycode=	705	if	country=="Slovenia"
replace	countrycode=	710	if	country=="South Africa"
replace	countrycode=	724	if	country=="Spain"
replace	countrycode=	752	if	country=="Sweden"
replace	countrycode=	756	if	country=="Switzerland"
replace	countrycode=	792	if	country=="Turkey"
replace	countrycode=	804	if	country=="Ukraine"
replace	countrycode=	840	if	country=="United States"
replace	countrycode=	862	if	country=="Venezuela, RB"
replace	countrycode=	27601	if	country=="Germany"
replace	countrycode=	82601	if	country=="United Kingdom"

tab country if countrycode!=.
drop if countrycode==.
sort countrycode

bys countrycode : egen disp_gini=mean(av_gini_disp)
bys countrycode : egen mkt_gini=mean(av_gini_mkt)
bys countrycode : egen abs_red=mean(av_abs_red)
bys countrycode : egen rel_red=mean(av_rel_red)

keep if year==2009

drop gini_disp gini_mkt av_gini_disp av_gini_mkt av_abs_red av_rel_red country country_name _mi_miss growth_merge GDP_merge govconsum_merge
drop countrymean

drop y2005 y2006 y2007 y2008 y2009 

rename countrycode V4
recast long V4

//merge data//
merge m:1 countrycode using growth_per_capita.dta
rename _merge growth_merge
merge m:1 countrycode using GDPperCapita.dta
rename _merge GDP_merge
merge m:1 countrycode using gov_consumption.dta
rename _merge govconsum_merge
sort countrycode

sort V4
merge m:1 V4 using country_data.dta

//label variables


