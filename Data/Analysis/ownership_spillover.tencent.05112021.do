**This do file containts code for a set of event studies. It assumes most of the
**pre-processing of the data is complete via R. 

*****************************************************************************
************ Tencent Spillovers Analysis  **************************
*****************************************************************************

**Set Working Directory
cd "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/tencent"

**Importing Cleaned Data
import delimited "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/tencent/chinese_rates_BL_TK.csv", case(preserve) encoding(ISO-8859-2) clear 

**Cleaning the Date Variable
gen date = date(datadate, "YMD")
format date  %tdnn/dd/YY

**Cleaning the labels
label var NFHWS " "
label var CCACU " "
label var CCACWS " "

********************   Modeling **************************************
***********************************************************************
*selecting folder for output tables
cd "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/table_outputs"

******************* TCHEY ****************************************
**TCHEY, 60-5, SPY**
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-60) eswub(-5) outputfile(TK_TCEHY_SPY_60to5_Norm_all.xlsx) showpvalues



**TCHEY, 90-5, SPY**
*Adjusted-Patell
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-90) eswub(-5) outputfile(TK_TCEHY_SPY_90to5_Norm_all.xlsx)  showpvalues



**TCHEY, 120-5, SPY**
*Adjusted-Patell
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-120) eswub(-5) outputfile(TK_TCEHY_SPY_120to5_Norm_all.xlsx) showpvalues


**TCHEY, 60-30, SPY**
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-60) eswub(-30) outputfile(TK_TCEHY_SPY_60to30_Norm_all.xlsx) showpvalues



**TCHEY, 90-30, SPY**
*Adjusted-Patell
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-90) eswub(-30) outputfile(TK_TCEHY_SPY_90to30_Norm_all.xlsx)  showpvalues



**TCHEY, 120-30, SPY**
*Adjusted-Patell
estudy TCEHY, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(Norm) ///
eswlb(-120) eswub(-30) outputfile(TK_TCEHY_SPY_120to30_Norm_all.xlsx) showpvalues




********************** WeChat Sharholder *******************************
global wechat_1year_tk "JD MOGU TME BILI HUYA PDD NIO QTT SOGO FUTU CANG DOYU"

**All firms trading 1 year prior to event; Event Window Starting at -5**

**SOEs listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_KP_1year.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_KP_1year.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_KP_1year.xlsx) suppress("ind") showpvalues

**SOEs listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_1year.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_KP_1year.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_ADJP_1year.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_KP_1year.xlsx) suppress("ind") showpvalues




********************** Excluding firms with other news events at the time. **********************

global wechat_1year_tk_news "MOGU BILI PDD NIO SOGO FUTU"
*removed JD CANG
**All firms trading 1 year prior to event; Event Window Starting at -5**

**SOEs listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_ADJP_1year_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_KP_1year_news.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_ADJP_1year_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_KP_1year_news.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_ADJP_1year_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_KP_1year_news.xlsx) suppress("ind") showpvalues

** All firms trading 1 year prior, but instead of using SPY we use SPY Estimation **
**SOEs listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_1year_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_1year_news.xlsx) suppress("ind") showpvalues

*Adjusted-Patell
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_1year_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_1year_tk_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_1year_news.xlsx) suppress("ind") showpvalues




********************** WeChat Large Sharholder (20%) *******************************
global wechat_20plus "TME HUYA SOGO FUTU DOYU"

**All firms trading 1 year prior to event; Event Window Starting at -5**

**SOEs listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_KP_20plus.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_KP_20plus.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_KP_20plus.xlsx) suppress("ind") showpvalues

**SOEs listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_20plus.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_KP_20plus.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_ADJP_20plus.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_KP_20plus.xlsx) suppress("ind") showpvalues


********************** WeChat Large Sharholder (20%) - News *******************************
global wechat_20plus_news "SOGO FUTU"


**All firms trading 1 year prior to event; Event Window Starting at -5**

**SOEs listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_KP_20plus_news.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_KP_20plus_news.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_KP_20plus_news.xlsx) suppress("ind") showpvalues

**SOEs listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_20plus_news.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_KP_20plus_news.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_ADJP_20plus_news.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_20plus_news, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_KP_20plus_news.xlsx) suppress("ind") showpvalues


********************** WeChat Reliant Firms *******************************
global wechat_reliant " JD PDD MOGU SOGO "

**SOEs listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(TK_WeChat_SPY_60to5_KP_wechatreliant.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(TK_WeChat_SPY_90to5_KP_wechatreliant.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(TK_WeChat_SPY_120to5_KP_wechatreliant.xlsx) suppress("ind") showpvalues

**SOEs listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(TK_WeChat_SPY_60to30_KP_wechatreliant.xlsx) suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(TK_WeChat_SPY_90to30_KP_wechatreliant.xlsx) suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_ADJP_wechatreliant.xlsx) suppress("ind") showpvalues

*KP
estudy $wechat_reliant, datevar(date) evdate(08062020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(TK_WeChat_SPY_120to30_KP_wechatreliant.xlsx) suppress("ind") showpvalues

