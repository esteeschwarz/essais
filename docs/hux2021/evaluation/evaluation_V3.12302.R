#12144.
#20220405(08.13)
# HUX2021 evaluation, v.2.0, on base of script 12371b.R
# v3.0, on base of V2.12144.R
#############################
# file keeping:
# daten original:
#src_o<-("https://github.com/esteeschwarz/essais/raw/main/docs/hux2021/evaluation/sprdata.csv")
# daten prepared
src_d<-("https://github.com/esteeschwarz/essais/raw/main/docs/hux2021/evaluation/sprdataprepared.csv")
# evaluation script v.1.x
#src_e<-("https://github.com/esteeschwarz/essais/raw/main/docs/hux2021/evaluation/1237b.R")
###########################
###########################
library(lme4)
#library(lmerTest)
library(stringi)
library(readr)
library(clipr)
library(ggplot2)

shinydatascript<-function(set,input){
  
#1
dta<-read.csv2(src_d)
d1ns<-colnames(dta)
d1ns[6]<-"XvsGr"
d1ns
colnames(dta)<-d1ns
#colnames(dta)<-d1ns

##sm-em-lc-mm kategorien in spalte $group
sm<-"SM"
em<-"EM"
lc<-"LC"
mm<-"MM"
vso<-"All"
ti<-"ti"
rtc<-"rtc"
rtcc<-"rtcc"
SM<-"SM"
EM<-"EM"
LC<-"LC"
MM<-"MM"
VSO<-"All"
TI<-"ti"
RTC<-"rtc"
RTCC<-"rtcc"
vsAll<-"All"
smvsa<-"SMvsAll"
emvsa<-"EMvsAll"
lcvsa<-"LCvsAll"
mmvsa<-"MMvsAll"
ti0<-100
ticontrol<-100
ti2<-100
# 

###########################


###
#set<-dta
#add control observation
adcontrol<-function(set,ti0,ticontrol,ti2){
 # print(length(set))
  #setns<-colnames(set)
  #print(setns)
  #setns[6]<-"vsGroup"
  #colnames(set)<-setns
  con1<-set[1,]
  con1
  con1$lfd<-length(set$lfd)+1
  con1$participant<-"admin"
  con1$tnid<-999
  con1$gilt<-1
  con1$group<-"control"
  con1[,6]<-"0Control"
  con1$category<-"control"
  con1$itemId<-"control"
  con1$item<-"control"
  con1$regionId<-"control1"
  con1$elapsedTime<-NA
  con1$timeinterval<-ti0
  con1$target<--1
  con1$string<-"dies ist ein control string medium length"
  con1$char<-stri_count_boundaries(con1$string,"character")
  con1$rt_corr<-NA
  con1$speed<-NA
  con1$adinterval<-NA
  con1$wds<-stri_count_boundaries(con1$string)
  con1$addwds<-NA
  con1$proctbywd<-NA
  con1$addproct<-NA
  con1$proctbywdavg<-NA
  con1$addproctbywds<-NA
  con1$proctbychar<-NA
  con1$addchar<-NA
  con1$addproctbychar<-NA
  con1$explique<-"control string zur festlegung der minimal RT"
  
  # print(length(con1))
  # print(colnames(con1))
  # print(length(set))
  # print(colnames(set))
  # 
#  print(length(set))
  #setns<-colnames(set)
  #print(setns)
  #setns[6]<-"vsGroup"
  #colnames(set)<-setns
  con2<-set[1,]
  con2
  con2$lfd<-length(set$lfd)+2
  con2$participant<-"admin"
  con2$tnid<-999
  con2$gilt<-1
  con2$group<-"control"
  con2[,6]<-"0Control"
  con2$category<-"control"
  con2$itemId<-"control"
  con2$item<-"control"
  con2$regionId<-"control"
  con2$elapsedTime<-NA
  con2$timeinterval<-ticontrol
  con2$target<-0
  con2$string<-"dies ist ein control string medium length"
  con2$char<-stri_count_boundaries(con2$string,"character")
  con2$rt_corr<-NA
  con2$speed<-NA
  con2$adinterval<-NA
  con2$wds<-stri_count_boundaries(con2$string)
  con2$addwds<-NA
  con2$proctbywd<-NA
  con2$addproct<-NA
  con2$proctbywdavg<-NA
  con2$addproctbywds<-NA
  con2$proctbychar<-NA
  con2$addchar<-NA
  con2$addproctbychar<-NA
  con2$explique<-"control string zur festlegung der minimal RT"
  # 
  # print(length(con2))
  # print(colnames(con2))
  # print(length(set))
  # print(colnames(set))
  # ####################
  # print(length(set))
  # #setns<-colnames(set)
  #print(setns)
  #setns[6]<-"vsGroup"
  #colnames(set)<-setns
  con3<-set[1,]
  con3
  con3$lfd<-length(set$lfd)+3
  con3$participant<-"admin"
  con3$tnid<-999
  con3$gilt<-1
  con3$group<-"control"
  con3[,6]<-"0Control"
  con3$category<-"control"
  con3$itemId<-"control"
  con3$item<-"control"
  con3$regionId<-"control"
  con3$elapsedTime<-NA
  con3$timeinterval<-ti2
  con3$target<-1
  con3$string<-"dies ist ein control string medium length"
  con3$char<-stri_count_boundaries(con3$string,"character")
  con3$rt_corr<-NA
  con3$speed<-NA
  con3$adinterval<-NA
  con3$wds<-stri_count_boundaries(con3$string)
  con3$addwds<-NA
  con3$proctbywd<-NA
  con3$addproct<-NA
  con3$proctbywdavg<-NA
  con3$addproctbywds<-NA
  con3$proctbychar<-NA
  con3$addchar<-NA
  con3$addproctbychar<-NA
  con3$explique<-"control string zur festlegung der minimal RT"
  # 
  # print(length(con3))
  # print(colnames(con3))
  # print(length(set))
  # print(colnames(set))
  
  return(rbind(set,con3,con2,con1))
}
dta_o<-dta
dta2<-adcontrol(dta_o,1,300,600)
dta<-dta2
##########################
#3.
#add column with length corrected response times
get_rtc<-function(set){
charscpt<-stri_count_boundaries(set$string,type="character")
dtares<-residuals(lm(timeinterval~charscpt,set))
#dtares<-round(dtares,3)
#head(dtares)
#dtap1<-cbind(set,"rtc"=dtares)
set<-cbind(set,"rtc"=dtares)
return(set)
}

##########
#4. 
#targetlisten ohne outliers
#set<-dta0

outl.fun<-function(set,outbottom){
  attach(set)
  outl.form<-set
  sprmean<-mean(timeinterval)
  
  stdev<-sd(timeinterval)
  sdout<-stdev*2.5
  outtop<-sprmean+sdout
  # outbottom<-sprmean-sdout ## negative
  #  outbottommod<-319
  #discard outliers according to subset
  liste<-subset(set,timeinterval<outtop&timeinterval>outbottom)
}
###
#5.
#discard outliers on base of length corrected response time
###################################
outl.fun.rtc<-function(set){
 # attach(set)
dtartc<-get_rtc(set)
  #  outl.form<-set
rtc<-dtartc$rtc
  sprmean<-mean(rtc)
  
  stdev<-sd(rtc)
  sdout<-stdev*2.5
  outtop<-sprmean+sdout
  outbottom<-sprmean-sdout ## negative
  #  outbottommod<-319
  #discard outliers according to subset
  liste<-subset(dtartc,rtc<outtop&rtc>outbottom)

  }
dtax<-outl.fun.rtc(dta)
#outl.fun()
#######
#5.1
#set without outliers with resp to target length
#dtap2<-outl.fun.rtc(dtap1)
##########?????????
#5.2 manuell ausgeschlossene fälle im scheme
#dtap3<-subset(dtap2,gilt==1)
#dtap2<-dtap3
##########????????

#6.

#########################
#remove(dtax)


#7.
############### THIS
#8.
# #wks. creates subsets for lmer test  
# }
##############################################################

dta_setx<-function(set,chose,out,glt,ctrl){
  
  t1<-chose[1]
  t2<-chose[2]
  t3<-chose[3]
  xo<-chose[4]
  g1<-chose[5]
  g2<-chose[6]
  
  setvsx<-  function(set,gr,other){
    dta<-set
    #  attach(dta)
    sublc<-subset(dta,group==gr)
    subnlc<-subset(dta,group!=gr)
    subna<-subset(dta,is.na(group))
    sublc$category<-gr
    subns<-stri_join(gr,"vs",other)
    subnlc$category<-subns
    subna$category<-subns
    lcvsO<-rbind(sublc,subnlc,subna)
    length(lcvsO$category==gr)-length(lcvsO$category==subns)
    set<-get_rtc(lcvsO)
    return(set)
  }
#######  
  dtatg<-function(set,t1,t2,t3,g1,g2){
    setxvso<-setvsx(set,g1,g2)
    return(subset(setxvso, target==t1|target==t2|target==t3))
    
  }
#########  
  dta_grx<-function(set,g1,g2){
    subset(set,group==g1|group==g2)
  }
#######  
  ifelse(out==1,set1<-outl.fun.rtc(set),set1<-set)
  ifelse(ctrl==1,set2<-adcontrol(set1,ti0,ticontrol,ti2),set2<-set1)
  #2
  set3<-subset(set2,gilt==glt) #subset manuell gefiltert
  ifelse(xo==1,return(dtatg(set3,t1,t2,t3,g1,g2)),
         return(dta_grx(dtatg(set3,t1,t2,t3,g1,g2),g1,g2)))
}
# ###############
##############
createsets<-function(){
  ch1<-c(0,0,0,0,sm,em)
  ch2<-c(0,0,0,0,sm,lc)
  ch3<-c(0,0,0,0,sm,mm)
  ch4<-c(0,0,0,0,em,lc)
  ch5<-c(0,0,0,0,em,mm)
  ch6<-c(0,0,0,0,lc,mm)
  
  ch11<-c(0,0,1,0,sm,em)
  ch21<-c(0,0,1,0,sm,lc)
  ch31<-c(0,0,1,0,sm,mm)
  ch41<-c(0,0,1,0,em,lc)
  ch51<-c(0,0,1,0,em,mm)
  ch61<-c(0,0,1,0,lc,mm)
  
  ch111<-c(-1,0,1,0,sm,em)
  ch211<-c(-1,0,1,0,sm,lc)
  ch311<-c(-1,0,1,0,sm,mm)
  ch411<-c(-1,0,1,0,em,lc)
  ch511<-c(-1,0,1,0,em,mm)
  ch611<-c(-1,0,1,0,lc,mm)
  
  ch7a<-c(0,0,0,1,sm,vso)
  ch7b<-c(0,0,0,1,em,vso)
  ch7c<-c(0,0,0,1,lc,vso)
  ch7d<-c(0,0,0,1,mm,vso)
  
  ch71a<-c(0,1,0,1,sm,vso)
  ch71b<-c(0,1,0,1,em,vso)
  ch71c<-c(0,1,0,1,lc,vso)
  ch71d<-c(0,1,0,1,mm,vso)
  
  ch711a<-c(-1,1,0,1,sm,vso)
  ch711b<-c(-1,1,0,1,em,vso)
  ch711c<-c(-1,1,0,1,lc,vso)
  ch711d<-c(-1,1,0,1,mm,vso)
  
  chosx<-rbind(ch1,ch2,ch3,ch4,ch5,ch6,ch7a,ch7b,ch7c,ch7d,
               ch11,ch21,ch31,ch41,ch51,ch61,ch71a,ch71b,ch71c,ch71d,
               ch111,ch211,ch311,ch411,ch511,ch611,ch711a,ch711b,ch711c,ch711d)
  chosx[7:12]
  chosx.ns<-c("target -1","target 0","target +1","SMvsOther","group 1","group 2")
  colnames(chosx)<-chosx.ns
  return(chosx)
}
##########################
#setx<-createsets()
#setx[1,]
#wks.
#remove(setx)
#ch1
##########################
#####################################################
#lmerun(lmef[[1]],dta,setx[1,],1)

getmean<-function(set,chose,out,glt,ctrl,flagall,rt){
  t1<-chose[1]
  t2<-chose[2]
  t3<-chose[3]
  sxo<-chose[4]
  g1<-chose[5]
  g2<-chose[6]
  mnset<-dta_setx(set,c(chose[1],chose[2],chose[3],chose[4],chose[5],chose[6]),out,glt,ctrl)
 flag<-chose[5]
  flagset<-mnset 
  checkvsall<-function(set){
    stri_detect(set$category,regex="vs")
  }
  # #######################
  c1<-flagset[with(flagset,category==flag),]
  length(c1$category)
  ifelse(rt==ti,mn1<-mean(c1$timeinterval),ifelse(rt==rtc,mn1<-mean(c1$rtc),mn1<-mean(c1$rtc.1)))
  checkvsall(flagset)
  ifelse(flagall==0,c2<-flagset[with(flagset,group==chose[6]),],
         c2<-flagset[with(flagset,checkvsall(flagset)),])
  ifelse(rt==ti,mn2<-mean(c2$timeinterval),ifelse(rt==rtc,mn2<-mean(c2$rtc),mn2<-mean(c2$rtc.1)))
  length(c2$category)
  c2$cat
  mnx<-cbind(mn1,mn2)
  rownames(mnx)<-"mean"
  ifelse(flagall==1,col2<-"vsAll",col2<-chose[6])
  colnames(mnx)<-c(chose[5],col2)
  print(mnx)
  
  ###########################

} ########## end getmean

#####################################################
##############################################################
create_lmeforms<-function(set,resp){
lme2.form2.rnd<-paste0(         "(1|item)+(1|participant)")
lme2.form3.rnd<-paste0("(1|char)+(1|item)+(1|participant)")
########## TD
lme2.form2.cat<-paste0(colnames(set)[6])
########## 
lme2.form2.XvsO<-paste0("category")
lme2.form.cpt<-      paste(lme2.form2.cat, "+",lme2.form2.rnd,"+(1+",lme2.form2.cat, "|participant)")
lme2.form.cpt.XvsO<- paste(lme2.form2.XvsO,"+",lme2.form2.rnd,"+(1+",lme2.form2.XvsO,"|participant)")
lme2.form.pure<-     paste(lme2.form2.cat, "+",lme2.form3.rnd,"+(1+",lme2.form2.cat, "|participant)")
lme2.form.pure.XvsO<-paste(lme2.form2.XvsO,"+",lme2.form3.rnd,"+(1+",lme2.form2.XvsO,"|participant)")

rtc<-"rtc ~ "
rtcc<-"rtc.1 ~ "
ti<-"timeinterval ~ "
ifelse(resp=="rtc",rt<-rtc,ifelse(resp=="rtcc",rt<-rtcc,rt<-ti))
(fmlRTCgr <- as.formula(paste("rtc ~ ", lme2.form.cpt)))
(fmlTIgr <- as.formula(paste("timeinterval ~ ", lme2.form.cpt)))
(fmlTIvs<-  as.formula(paste("timeinterval ~ ", lme2.form.cpt.XvsO)))
(fmlRTCvs <- as.formula(paste("rtc ~ ", lme2.form.cpt.XvsO)))

(fmlxgr <- as.formula(paste(rt, lme2.form.cpt)))
(fmlxvs <- as.formula(paste(rt, lme2.form.cpt.XvsO)))
(fmlpgr<-  as.formula(paste(ti, lme2.form.pure)))
(fmlpvs<-  as.formula(paste(ti, lme2.form.pure.XvsO)))
lmeforms2<-list("gr"=fmlpgr,"vs"=fmlpvs,"old"=c(fmlRTCgr,fmlTIgr,fmlRTCvs,fmlTIvs))
lmeforms<-list("RTCgr"=fmlRTCgr,"TIgr"=fmlTIgr,"RTCvs"=fmlRTCvs,"TIvs"=fmlTIvs)
#lmeforms[1]
return(lmeforms2)
}
lmef<-create_lmeforms(dta,"ti")
#lmef$
lmef[[1]]
#summary(lmer(lmef[[1]],dta))
####################################################
# lmerun<-function(form,set,t1,t2,t3,sm,g1,g2){
# lmeset<-dta_setx(set,t1,t2,t3,sm,g1,g2)
#   (sumSMEM<- lmer(form,lmeset)) 
# 
# }
dtax<-dta_setx(dta,c(0,0,0,1,lc,vso),1,1,1)
cat<-"group"
cat<-"category"
start<-list()
start$theta<-50
#start
#############tail(flagset$timeinterval)
#"In the model, we posited a main effect of Category (single vs. other) 
#and random effects of Participant and Item, along with a random slope of Category by Participant"
#function(set,chose,out,glt,ctrl,flagall,rt){
#chose = c(target-1,target0,target1,XvsO,group1,group2)
getmean(dta,c(0,0,0,1,sm,lc),1,1,1,0,ti)
#sum1<-lmer(timeinterval ~  1 + category  + (1|item) + (1 | tnid) + (1 + category : tnid),dtax,offset=rtc)
#sum1<-lmer(timeinterval ~  0 + category  + (1|char) +(1+item) + (1 + tnid) + (0 + category | tnid),dtax)
###
#sum7<-lmer(timeinterval ~   group  + (1+char) +(0+item) + (1 + tnid) + (0+group | tnid),dtax)
###
#sum1<-lmer(timeinterval ~  0 + group  + (1| item) + (1 + tnid) + (1 + group | tnid),dtax,offset=rtc) 
#summary(sum1)
#write_clip(summary(sum1)$coefficients)
#lmer(timeinterval ~ XvsGr + (1 | char) + (1 | item) + (1 | participant) + (1 + XvsGr | participant),dta2) 

#hier erwartbare signifikante abweichung an der controlgroup (10ms)
# #	Estimate	Std. Error	df	t value	Pr(>|t|)
# (Intercept)	1962.01988337944	769.484155831318	0.0332340108424057	2.5497859423236	0.895556169266178
# groupEM	-294.885025112871	752.271656440326	0.0303588243992334	-0.391992736384935	0.95436662231607 
# groupLC	-135.603344231537	751.209417962135	0.0301877089692062	-0.180513370824608	0.973231410078128
# groupMM	-161.068080681727	751.323604459432	0.0302059794000679	-0.214379103392624	0.969457742403747
# groupSM	-206.985184742614	751.201649669681	0.0301864634390495	-0.275538778214384	0.96353527594105
# item11	-234.352827566011	36.9872049893208	252.401241553544	-6.33605128134649	1.07560884011726e-09
# item12	-171.987207837041	37.6102124340393	194.501489937937	-4.5728858388841	8.54801375910651e-06
# item18	-144.438814703908	36.4390320376228	236.487767093904	-3.96384883535811	9.77219496693814e-05
# item2	360.952230131303	37.1858091455239	245.550453948994	9.70671980590078	4.60902898110223e-19   ###
# item26	64.4055527304593	39.1327963396548	229.809999621154	1.64582035414613	0.101167682280183    #----
# item5	1094.97275676077	37.1365111151353	197.512448921418	29.4850734191479	2.86060059928377e-74   ###
# item6	511.834559622824	38.0743238700786	230.337549930118	13.4430373962611	8.46552584220792e-31   ###
# tnid	0.381720779917168	0.75441015474542	86.8762170406657	0.505985739343583	0.614148208300596
dta1<-dta_setx(dta,c(0,0,0,0,sm,sm),0,1,1)
chose<-c(0,0,0,1,sm,em)
#lmerun(dta,ti,"vs",chose,1,1,1)
#outl.fun.rtc(dta)
form<-create_lmeforms(dta,rtc)
form[[1]]
#lmerun_func
lmerun<-function(set,resp,gr,chose,out,glt,ctrl){
  form<-create_lmeforms(set,resp)$gr
  set2<-get_rtc(set)
  ifelse(out==1,set2<-outl.fun.rtc(set2),set2<-set2)
  lmeset<-dta_setx(set2,chose,out,glt,ctrl)
  det_cat<-stri_detect (as.character(form[3]),regex  = "category")
  det_vs<-stri_detect (as.character(form[3]),regex  = "vs")
  sum1<-( lmer(form,lmeset)) 
  sum2<-summary(sum1)
    dif<-abs(coef(sum2)[1]-coef(sum2)[2])
    print(sum2$coefficients)
    #wenn global&category 
    ifelse(chose[4]==1&det_cat==T,out<-c(T,", abs:",dif,"ms"),
           out<-F)
    ifelse(length(sum2$coefficients[,1]<=2),out2<-coef(sum2)[1]>coef(sum2)[2],out2<-"blu")

    cat("global",chose[5],"=",out,"\nIntercept greater =",out2) #nicht beide TRUE > global = F
    # wenn !category | !vsAll >         
    ifelse(out==F,ifelse(det_vs!=T,out<-c("\nabs category",chose[5]," ~ ",chose[6],dif,"ms\n"),
                         ifelse(chose[4]!=1,out<-c(", abs:",dif,"ms\n"),out<-"\nkeine berechnung\n")),     
                         out<-"\n---------------\n")
    cat(out)
    cat(as.character(form),"\n")
    #(dif)
  return(sum1)
  
}
#lmef$gr
# as.character(fmlRTCgr[3])
#setx[7,4]==T
#lmef[[1]][3]
#cat(as.character(lmef[[1]]))
#(lmerun(dta,ti,1,c(0,0,0,1,em,sm),1)) #RTC
#             Estimate Std. Error           df   t value  Pr(>|t|)
# (Intercept) -2043.817   1149.383 0.0001254110 -1.778186 0.9992778
# XvsGr1SM     1720.789   1157.860 0.0001291520  1.486180 0.9992813
# XvsGr2EM     1953.149   1166.471 0.0001330369  1.674408 0.9992458
# XvsGr3LC     1807.058   1160.266 0.0001302287  1.557451 0.9992698
# XvsGr4MM     1832.557   1158.211 0.0001293085  1.582230 0.9992724
# SM < LC <= MM < EM
# with outliers discarded 2,5sd
# #             Estimate Std. Error          df   t value  Pr(>|t|)
# (Intercept) -2043.817   953.2100 0.007625365 -2.144141 0.9707632
# XvsGr1SM     1727.195   962.4626 0.007925755  1.794558 0.9711459
# XvsGr2EM     1767.469   964.0069 0.007976722  1.833461 0.9708222
# XvsGr3LC     1812.692   965.0320 0.008010718  1.878376 0.9705283
# XvsGr4MM     1828.215   962.6068 0.007930514  1.899234 0.9706952
# SM < EM < LC < MM
#(lmerun(lmef[[2]],dta,c(0,0,0,1,em,vso))) #TI
#(lmerun(dta,rtc,2,c(0,0,0,1,mm,vso),1)) #TI

#            Estimate Std. Error           df   t value  Pr(>|t|)
# (Intercept)  300.000   1140.089 3.058947e-06 0.2631373 0.9999825
# XvsGr1SM    1318.191   1155.392 3.226513e-06 1.1409043 0.9999769
# XvsGr2EM    1460.421   1164.039 3.324189e-06 1.2546154 0.9999760
# XvsGr3LC    1500.030   1158.029 3.256070e-06 1.2953304 0.9999763
# XvsGr4MM    1476.138   1155.909 3.232291e-06 1.2770366 0.9999765
# SM < EM <= MM < LC
# #########
# #cross table
# sum3<-list()
 set1<-"dta,ti,1,c(0,0,0,1,em,vso),0,1"
 set2<-"dta,ti,1,c(0,0,0,1,em,vso),1,0"
######################################
getviews<-function(set1,set2,sumset){
  lme1<-paste0("lmerun(",set1,")") #set1 = "lmerun(dta,ti,1,c(0,0,0,1,em,vso),0)"
  lme11<-(eval(parse(text=lme1))) #wks.
  lme2<-paste0("lmerun(",set2,")") #set1 = "lmerun(dta,ti,1,c(0,0,0,1,em,vso),0)"
  lme22<-eval(parse(text=lme2)) #wks.
  sum1
  #lmerun(set1)
  sum1$coefficients
  sum1<-summary(lme11)
  sum2<-summary(lme22)
  sumset[[set1]]<-sum1$coefficients
  sumset[[set2]]<-sum2$coefficients
  return(sumset)
#sumset
}
########lmerun(dta_rtc,rtcc,"gr",c(0,0,0,1,sm,vso),1)
#######################################
getviews_single<-function(set1,sumset){
  lme1<-paste0("lmerun(",set1,")") #set1 = "lmerun(dta,ti,1,c(0,0,0,1,em,vso),0)"
  lme11<-(eval(parse(text=lme1))) #wks.
  sum1<-summary(lme11)
  #sum2<-summary(lme22)
  sumset[[set1]]<-sum1$coefficients
  #sumset[[set2]]<-sum2$coefficients
  return(sumset)
  #sumset
}
#wks
###### now loop through sets
#length(setx[,1]) #1:length(setx[,1]
#setx[,1]
parsethrough<-function(){
  for (k in 1:3){
  #for (k in 1:length(setx[,1])){
  out<-1
  glt<-1
  ctrl<-1
  lmerun(dta,ti,1,setx[k,],out,glt,ctrl)
  lmerun(dta,rtc,1,setx[k,],out,glt,ctrl)
  lmerun(dta,ti,2,setx[k,],out,glt,ctrl)
  lmerun(dta,rtc,2,setx[k,],out,glt,ctrl)
  lmerun(dta,ti,1,setx[k,],out,glt,ctrl)
  lmerun(dta,rtc,1,setx[k,],out,glt,ctrl)
  lmerun(dta,ti,2,setx[k,],out,glt,ctrl)
  lmerun(dta,rtc,2,setx[k,],out,glt,ctrl)
}
}
#####wks.
createview<-function(){
  lmerun(dta,"rtc",1,c(0,0,0,0,sm,em),1)
   
   (lmerun(dta,ti,1,c(0,0,0,1,em,vso),1)) #TI
  sum4<-list()
  sum1<-lmerun(dta2,ti,1,c(0,0,0,1,sm,sm),1)
  sum2<-summary(sum1)
  sum2
  sum4[[1]]<-sum2$coefficients
  sum4[1]
  sum3$"ti,1,c(0,0,1,1,sm,em),1"-sum3$`ti,1,c(0,0,0,1,em,vso),1,+3control`
  sum3$`ti,1,c(0,0,0,1,sm,em),1`-sum3$`ti,1,c(0,0,0,1,em,vso),1,+3control`
  sum3[[4]]-sum3[[3]]
sum3$`ti,1,c(0,0,0,1,sm,em),1`-sum2$coefficients
sum4<-as.data.frame(sum4)
is.data.frame(sum4)
#write_csv2(sum4,"huxout.csv")
  }


#TODO 12146: sets XvsOther dependant on setx[x]
#################################
# lmedataset<-dta_setx(dta2,0,0,0,F,sm,em)
# form<-fmla2
# length(lmedataset$vsGroup)
# lmerun(fmla4,dta,setx[2,])
####################################################
#lmer sets
#formula:
#(target-1,target0,target+1,SMvsO=T/F,group1,group2)
# #---------------------------------------------------------------------
#12152.
#try relate RTC to timinterval, coefficient
rtc_0<-get_rtc(dta)
t1<-(rtc_0$rtc)
t2<-(dta$timeinterval)
tail(dta$timeinterval)
#t1;t2
#lm1<-lm(t2~t1,dta)
#summary(lm1)
#lmer(dta_rtc$timeinterval)
dta1<-dta_setx(dta,c(0,0,0,1,sm,vso),1,1,1)
lmeform_basic<-("timeinterval~group + (1|item)+(1|participant)+(1+group|participant)")
#sum2<-lmer(timeinterval ~ group + (1|char)+(1|item)+(1|participant)+(1+group|participant),dta1)
#sum1<-lmer(timeinterval ~ group + (1|item)+(1|participant)+(1+group|participant),dta1)
# DIFF character dependency, largest at group EM and SM
#sum3<-summary(sum2)$coefficients-summary(sum1)$coefficients
#sum3["groupEM","Estimate"]
######
#############################################################################
#############################################################################
#---C---  compare R/F results:-----------------------
#rubio-fernandez: r/f
rftargets<-c(
  "It had sharp claws",
  "she would apply her scalpel close to your heart",
  "the grandstand would give him a standing ovation",
  "the bouquets thrown onto the stage",
  "there was the occasional power outage"
)
rfchars<-stri_count_boundaries(rftargets,"character")
mean(rfchars) # 36.8
#"We constructed 3 lists of materials, each containing 7 items of each experimental 
#condition (Extended Metaphor, Single Metaphor and Literal)"
#For the self-paced reading task, each passage was divided into 8 segments 
#(average number of words: 7.4; range: 3--10). One of these segments was the target expression, 
#which appeared in isolation (average number of words: 5.1; range: 2--9).
#"In the model, we posited a main effect of Category (single vs. other) 
#and random effects of Participant and Item, along with a random slope of Category by Participant"
#"pairwise comparisons of Condition levels"


#For these raw data, the mean reading time for the critical segments in the 
#Literal condition was       1457 ms (SD 727 ms), in the 
#Extended Metaphor condition 1543 ms (SD 764 ms), and in the 
#Single Metaphor condition   1578 ms (SD 768 ms).
#LC < EM < SM
#C.1
rftimes<-rbind("SM"=1578,"EM"=1543,"LC"=1457)
#general means group vs all
# #
#extraction: dta_setx(set,c(target-1,target0,target+1,groupvsall?,group1,group2),discard_outliers?,nur-gültige-fälle?) 
#1=yes,0=no
d5<-(dta_setx(dta,c(0,0,0,1,lc,vso),1,1,1))
attach(d5)
m1<-mean(d5$timeinterval[group==sm],na.rm=T)
m2<-mean(d5$timeinterval[group!=sm],na.rm=T)
# mean at 0,0,0,out
# #    mean group  mean !group  #R/F
# sm   1851.040    1662.170 >
# em   1861.000    1659.711 >
# lc   1595.667    1683.930 <
# mm   1661.000    1679.075 <
# rank: 

tb1<-getmean(dta,c(0,0,0,0,sm,em),0,0,0,1,ti) # with RAW dataset
#here results reading time RAW, target 0
#        mean        sd
# SM 1623.482  834.4605
# EM 1761.593 1648.5537
# MM 1777.380  958.3569
# LC 1835.347 1304.3131

##################
#(without outliers): the mean response times for the critical segments were 
#1421 ms (SD 650 ms) in the Literal condition, 
#1498 ms (SD 716 ms) in the Extended Metaphor condition, 
#1537 ms (SD 716 ms) in the Single Metaphor condition.
#LC < EM < SM
#C.2
#without outliers (2,5sd)
dta1<-outl.fun(dta,250) #discard outliers with bottom cutoff at 250ms
tb2<-getmean(dta1,c(0,0,0,0,sm,em),0,0,0,1,ti)
#      mean        sd
# EM 1655.608 1033.4464
# SM 1734.169  761.2755
# MM 1906.137  879.5549
# LC 1978.348 1261.6891

#second formula, outliers discarded with respect to target length
dta2<-outl.fun.rtc(dta)
tb3<-getmean(dta2,c(0,0,0,0,sm,vso),0,0,0,1,ti)
#       mean        sd
# EM 1563.051 1062.1094
# SM 1623.482  834.4605
# MM 1777.380  958.3569
# LC 1835.347 1304.3131

#mean RT bei target 0+1, without outliers
#       mean       sd
# EM 1846.250 1355.556
# SM 1998.554 1329.243
# MM 2151.842 1299.206
# LC 2206.770 2147.328
# 

#----
#lme4:
#(R/F): with the Single condition being read slower than the others (coefficient = 77.3, SE = 24.9, t = 3.10, p < 0.01)
# SMvsOther
# fmla2: timeinterval ~ vsGroup + (1 | item) + (1 | participant) + (1 + vsGroup | participant)
#             Estimate    Std. Error  df        t value     Pr(>|t|)
# (Intercept) 1627.63038   187.2118  16.62067  8.694058 1.378434e-07
# vsGroup2EM   -53.31639   114.9268  67.23981 -0.463916 6.442063e-01
# vsGroup3LC   171.50058   118.1121 113.13773  1.452016 1.492647e-01
# vsGroup4MM   142.07474   112.3709 206.37242  1.264338 2.075349e-01

# fmla3: timeinterval ~ category + (1 | item) + (1 | participant) + (1 + category | participant)
#                  Estimate Std. Error        df  t value     Pr(>|t|)
# (Intercept)     1609.0465   193.5761  17.06412 8.312216 2.099865e-07
# categorySMvsAll  164.1103   125.8149 158.10744 1.304379 1.940000e-01

# R/F: no significant difference between Extended and Single metaphors (coefficient = 38.4, SE = 29.7, t = 1.30, n.s.)
# fmla1: rtc ~ vsGroup + (1 | item) + (1 | participant) + (1 + vsGroup | participant)
#             Estimate   Std. Error       df    t value     Pr(>|t|)
# (Intercept) 1628.72591   148.5456 21.54982 10.9644857 2.801232e-10
# vsGroup2EM   -55.76876   118.9061 40.99085 -0.4690151 6.415439e-01
#
#highly significant differences between each of these and the Literal condition 
#Literal vs. Extended: coefficient = 75.3, SE = 28.2, t = 2.68, p < 0.01
# fmla3
# #                   Estimate Std.Error        df    t value     Pr(>|t|)
# (Intercept)     1786.69783   208.1213  21.73803  8.5848850 1.976257e-08
# categoryLCvsAll  -72.24273   128.3764 273.48929 -0.5627417 5.740718e-01

#Literal vs. Single: coefficient = 114.7, SE = 28.6, t = 4.00, p < 0.001)
#             Estimate Std. Error        df  t value     Pr(>|t|)
# (Intercept) 1628.8417   201.6062  12.92014 8.079324 2.090719e-06
# vsGroup3LC   151.2718   127.6845 101.21898 1.184731 2.388981e-01
#RT category greater = TRUE , difference category LC  ~ all = 1477.57 ms
#### with length corrected RT:
#              Estimate Std. Error       df   t value  Pr(>|t|)
# (Intercept) -310.20431   124.7393 34.67972 -2.486821 0.0178540
# vsGroup3LC    62.97836   114.9605 92.25119  0.547826 0.5851345
#RT category greater = FALSE , difference category LC  ~ all = 373.1827 ms
#############
# formel<-fmla1 #for rtc ~          groups   (length corrected RTs)
# formel<-fmla2 #for timeinterval ~ groups   (without length correction)
# formel<-fmla3 #for timeinterval ~ category (XvsOther)
# formel<-fmla4 #for rtc ~          category (XvsOther)
#create group vs set
# setx[x,] < x has to be 7,71,711 for global compare sets
# catsingle<-lc
# 
# setsingle<-setvsx(dta2,catsingle)
# sum1<-summary(lmerun(fmla3,setsingle,setx[7,]))
# sum1<-summary(lmerun(fmla1,dta2,setx[2,]))
# 
# dif<-abs(coef(sum1)[1]-coef(sum1)[2])
# cat("RT category greater =",coef(sum1)[1]>coef(sum1)[2],", difference category",catsingle," ~ all =",dif,"ms")
# (sum1$coefficients[])
# diflc<-dif
# diflcsm<-dif


#sum1
#with timeinterval fits with means in C.2

#here: coef=33.96, SE=98.24,t=0.346
#Literal vs. Single:  coefficient = 114.7, SE = 28.6, t = 4.00, p < 0.001).
#here: coef=11.159,SE=96.514,t=0.116
#SPEED:
#SM < Others
#
#hier resultate zeichenunabhängig, target 0+1:
#SM vs Others:
#coef = 77.94, SE = 241.47, t=-0.323, p < 0.001

#------------------------------------------------
##bis hier



##---D----------descriptive analysis


##---END 2---

#12373.
#coefficients(sumSMEM)

#12393.

#---D---- added LZ -----------
#R/F der reihe nach > mean response
########### decriptive proof mean vs. lme
proof_desc<-function(set){
d5<-set
#  d5<-(dta_setx(dta,c(0,0,0,1,lc,vso),1,1,1))
#attach(d5)

#mean(d5$timeinterval[category==sm],na.rm=T)
#sum(d5$category==sm)
bar_df<-data.frame(1:12)

m1<-mean(d5$timeinterval[group==sm],na.rm=T)
m2<-mean(d5$timeinterval[group!=sm],na.rm=T)
m3<-mean(d5$timeinterval[group==em],na.rm=T)
m4<-mean(d5$timeinterval[group!=em],na.rm=T)
m5<-mean(d5$timeinterval[group==lc],na.rm=T)
m6<-mean(d5$timeinterval[group!=lc],na.rm=T)
m7<-mean(d5$timeinterval[group==mm],na.rm=T)
m8<-mean(d5$timeinterval[group!=mm],na.rm=T)
m9<-rbind(cbind(m1,m2),cbind(m3,m4),cbind(m5,m6),cbind(m7,m8))
#m9d<-rbind(cbind(m1,"SM"),cbind(m3,"EM"),cbind(m5,"LC"),cbind(m7,"MM"))
m9
m9c<-rbind(m1,m3,m5,m7)
#m9cns<-c()
#m9
bar_df$RT[1:4]<-"TimeInterval"
bar_df$LZ[1:4]<-m9c

m9ns<-c("sm","em","lc","mm")
bar_df$group[1:4]<-m9ns
d5$rtc.2<-d5$timeinterval+d5$rtc
m1e<-mean(d5$rtc.2[group==sm],na.rm=T)
m2<-mean(d5$rtc.2[group!=sm],na.rm=T)
m3e<-mean(d5$rtc.2[group==em],na.rm=T)
m4<-mean(d5$rtc.2[group!=em],na.rm=T)
m5e<-mean(d5$rtc.2[group==lc],na.rm=T)
m6<-mean(d5$rtc.2[group!=lc],na.rm=T)
m7e<-mean(d5$rtc.2[group==mm],na.rm=T)
m8<-mean(d5$rtc.2[group!=mm],na.rm=T)
m9e<-rbind(m1e,m3e,m5e,m7e)
bar_df$RT[5:8]<-"TI + rtc"
bar_df$LZ[5:8]<-m9e
bar_df$group[5:8]<-m9ns

meanch<-mean(d5$char)
mean(d5$timeinterval/d5$char)*meanch
m1<-mean(d5$timeinterval[group==sm]/d5$char[group==sm],na.rm=T)*meanch
m2<-mean(d5$timeinterval[group!=sm]/d5$char[group!=sm],na.rm=T)*meanch
m3<-mean(d5$timeinterval[group==em]/d5$char[group==em],na.rm=T)*meanch
m4<-mean(d5$timeinterval[group!=em]/d5$char[group!=em],na.rm=T)*meanch
m5<-mean(d5$timeinterval[group==lc]/d5$char[group==lc],na.rm=T)*meanch
m6<-mean(d5$timeinterval[group!=lc]/d5$char[group!=lc],na.rm=T)*meanch
m7<-mean(d5$timeinterval[group==mm]/d5$char[group==mm],na.rm=T)*meanch
m8<-mean(d5$timeinterval[group!=mm]/d5$char[group!=mm],na.rm=T)*meanch
m9<-rbind(cbind(m1,m2),cbind(m3,m4),cbind(m5,m6),cbind(m7,m8))
#m9d<-rbind(cbind(m1,"SM"),cbind(m3,"EM"),cbind(m5,"LC"),cbind(m7,"MM"))
m9
m9f<-rbind(m1,m3,m5,m7)
#m9cns<-c()
#m9
bar_df$RT[9:12]<-"TI char"
bar_df$LZ[9:12]<-m9f

m9ns<-c("sm","em","lc","mm")
bar_df$group[9:12]<-m9ns
print(bar_df)
print(unique(d5$group))
p <- ggplot(data=bar_df,mapping=aes(x=group,y=LZ,fill=RT)) 
p + geom_col(position = "dodge")
}

proof_desc(dta_setx(dta,c(input[1],input[2],input[3],1,sm,vso),input[4],input[5],input[6])) #nur mit glt=1 (x,1,x)
}
#proof_desc(dta_setx(dta,c(1,1,-1,1,sm,vso),1,1,1)) #nur mit glt=1 (x,1,x)
#t-1,t0,t1,out,gilt,ctrl
xplotobject<-shinydatascript(src_d,c(0,1,1,1,1,1))
x
################

#wrapped for implement view on shiny, discomment and remove bracket on last line