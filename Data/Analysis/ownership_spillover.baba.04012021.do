**This do file containts code for a set of event studies. It assumes most of the
**pre-processing of the data is complete via R. 




***YOU COULD USE THE TENCENT FIRMS AS A PLACEBO FOR BABA TST, AND THE BABA FIRMS AS A PLACEB FOR THE TENCENT TEST


*****************************************************************************
********************* Alibaba  *******************************************
*****************************************************************************
**Set Working Directory
cd "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/baba"

**Importing the SOE-1 Category Data
import delimited "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/baba/baba_rates.csv", case(preserve) encoding(ISO-8859-2) clear 

**Cleaning the Date Variable
gen date = date(datadate, "YMD")
format date  %tdnn/dd/YY

**************************** BABA Only **************************************
cd "/Users/nikhilkalyanpur/Documents/ownership_spillover/Data/table_outputs"


**BABAonlys listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAonly_SPY_60to5_ADJP_all.xlsx)  showpvalues

*KP
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAonly_SPY_60to5_KP_all.xlsx)  showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAonly_SPY_90to5_ADJP_all.xlsx)  showpvalues

*KP
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAonly_SPY_90to5_KP_all.xlsx)  showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAonly_SPY_120to5_ADJP_all.xlsx)  showpvalues

*KP
estudy BABA, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAonly_SPY_120to5_KP_all.xlsx)  showpvalues


**************************** BABA All **************************************
global baba_all "WB BZUN XPEV BEST BILI RUHN GRPN"

**BABAalls listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAall_SPY_60to5_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAall_SPY_60to5_KP_all.xlsx)  suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAall_SPY_90to5_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAall_SPY_90to5_KP_all.xlsx)  suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAall_SPY_120to5_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAall_SPY_120to5_KP_all.xlsx)  suppress("ind") showpvalues




**All firms trading 1 year prior to event; Event Window Starting at -30**
**BABAalls listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(Alibaba_BABAall_SPY_60to30_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(Alibaba_BABAall_SPY_60to30_KP_all.xlsx)  suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(Alibaba_BABAall_SPY_90to30_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(Alibaba_BABAall_SPY_90to30_KP_all.xlsx)  suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(Alibaba_BABAall_SPY_120to30_ADJP_all.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_all, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(Alibaba_BABAall_SPY_120to30_KP_all.xlsx)  suppress("ind") showpvalues


**************************** BABA News **************************************
global baba_news "WB BZUN BEST BILI RUHN GRPN"

**BABAalls listed for a year, 60-5, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAall_SPY_60to5_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-5) outputfile(Alibaba_BABAall_SPY_60to5_KP_news.xlsx)  suppress("ind") showpvalues

**Firms listed for a year, 90-5, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAall_SPY_90to5_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-5) outputfile(Alibaba_BABAall_SPY_90to5_KP_news.xlsx)  suppress("ind") showpvalues



**Firms listed for a year, 120-5, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAall_SPY_120to5_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-5) outputfile(Alibaba_BABAall_SPY_120to5_KP_news.xlsx)  suppress("ind") showpvalues




**All firms trading 1 year prior to event; Event Window Starting at -30**
**BABAalls listed for a year, 60-30, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-60) eswub(-30) outputfile(Alibaba_BABAall_SPY_60to30_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-60) eswub(-30) outputfile(Alibaba_BABAall_SPY_60to30_KP_news.xlsx)  suppress("ind") showpvalues

**Firms listed for a year, 90-30, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-90) eswub(-30) outputfile(Alibaba_BABAall_SPY_90to30_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-90) eswub(-30) outputfile(Alibaba_BABAall_SPY_90to30_KP_news.xlsx)  suppress("ind") showpvalues



**Firms listed for a year, 120-30, SPY**
*Adjusted-Patell
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(ADJPatell) ///
eswlb(-120) eswub(-30) outputfile(Alibaba_BABAall_SPY_120to30_ADJP_news.xlsx)  suppress("ind") showpvalues

*KP
estudy $baba_news, datevar(date) evdate(12232020) ///
dateformat(MDY) indexlist(SPY) lb1(-0) ub1(1) lb2(-2) ub2(2) lb3(0) ub3(5) diagn(KP) ///
eswlb(-120) eswub(-30) outputfile(Alibaba_BABAall_SPY_120to30_KP_news.xlsx)  suppress("ind") showpvalues





