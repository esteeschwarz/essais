#12112.SPUND INTERAKTION conversation analysis (MDL)
#20220313(15.47)
#20220315(19.04)
#20220321(18.21)
#20220322(20.28)

#######################################
#file keeping#
#script source: "https://github.com/esteeschwarz/essais/blob/main/docs/STAT_R/INT_CA.mdl.notes_12112.R"
### audio ####
#52: 20201128 podcast "transphilosophisch, folge 52", lockdown, solo recording
##/Users/lion/boxHKW/21S/SPUND/lanwer/MDL/xpo002/TP#52.wav
#44: 20200808 pre lockdown, recording ensemble
##/Users/lion/boxHKW/21S/SPUND/lanwer/MDL/xpo002/TP#44.wav
#34: 20200120 pre lockdown, recording ensemble
##/Users/lion/boxHKW/21S/SPUND/lanwer/MDL/xpo002/TP34.wav
### annotation delay table ###
src52<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/TP52_DEL_imp.csv"
src44<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/TP44_DEL_imp.csv"
### topic analysis on transkript ###
srcta34<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/MDL_xpo_topicA_F34.001.md"
srcta52<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/MDL_xpo_topicA_F52.001.md"
srctaexb52<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/MDL_basisTS_12124_F52_excD.topicA.001.exb"
### partitur editor files ###
##https://github.com/esteeschwarz/essais/blob/main/docs/INT_CA/MDL/MDL_basisTS_12113_F34_exc-Vmann.002.exb
##https://github.com/esteeschwarz/essais/blob/main/docs/INT_CA/MDL/MDL_basisTS12113_F52_excD.002.basis001.exb
##https://github.com/esteeschwarz/essais/blob/main/docs/INT_CA/MDL/MDL_miniTS_12113_F52_exc-Dupdate.003.exb
##https://github.com/esteeschwarz/essais/blob/main/docs/INT_CA/MDL/MDL_annTS_12104_F44.exb
###############################
### TODO ###
## annotate topic distance in partitur editor + measure distance in timecode

#import table with delay annotation times
library(readr)
library(stringi)
library(xml2)

mdl52 <- read_table2(src52,col_names = FALSE)
mdl44<-read_table2(src44, col_names = FALSE)
topic52<-read_xml(srctaexb52)
#both samples same length
#mdl44<-sample(mdl44,length(mdl52))

#mdl1<-mdl44
#print(mdl1)
#mdl1[1]

#remove(mdl1)
#mdl2
#as.numeric(mdl2[1])
#stri_count_boundaries(mdl2[1],"(")
#stri_split(mdl4,"#")

mdl9<-function(set){
mdl2<-matrix(set)
mdl3<-stri_replace_all_fixed(mdl2,"(","")
mdl4<-stri_replace_all_fixed(mdl3,")","#")
mdl5<-unlist(strsplit(mdl4,"#"))
mdl6<-matrix(mdl5)
mdl7<-as.numeric(mdl6)
mdl8<-subset(mdl7,mdl7!=is.na(mdl7))
#mean(mdl8)
return(mdl8)
}
cat(mdl9(mdl44))
cat(mdl9(mdl52))

#mdl9(mdl44)

#dis44<-mdl8[1:length(dis52)]
dis44<-mdl9(mdl44)
dis52<-mdl9(mdl52)
difmdl<-ifelse(length(dis44)>length(dis52),dif1<-length(dis52),dif1<-length(dis44))

sdis44<-sample(dis44,difmdl)
sdis52<-sample(dis52,difmdl)
mean(dis44)
mean(dis52)

dis1<-cbind("1x2 record"=sdis44,"2x1 record"=sdis52)
plot(dis1,main = "delay of speaker secure turns")
#plot(line(dis1))
z<-line(dis1)
abline(coef(z))

boxplot(dis1)
mn44<-mean(sdis44)
mn52<-mean(sdis52)
mndis<-mn52-mn44
#tdis<-t.test(dis1,alternative = "g",var.equal = T) #no! two arrays!
tdis<-t.test(sdis44,sdis52,alternative = "g",var.equal = T, correct=F)
#works also!
tdis
#summary(tdis)
tdis$stderr
tdis$p.value
############
# significant difference between delay at:
# p = 0.9912 # 
# mean difference:
# 0.179 sec
############


#U-test für unabhängige stichproben
##rosemeyer uebung set D
#stichproben 1,2
d1<-sdis44
d2<-sdis52
d3<-c(d1,d2)

d5<-rank(d3)
d51<-length(d5)
d4<-cbind(d5,d3)
d52<-d51/2
d6<-sum(d5[1:d52])
d61<-d52+1
d7<-sum(d5[d61:d51])

a1<-d1
a2<-d2
r1<-d6
r2<-d7
#################
n1<-length(a1)
n2<-n1+1
u1<-r1-((n1*n2)/2)
u2<-r2-((n1*n2)/2)
#should be 0
uproof<-(u1+u2)-(n1*n1)
Ucpt<-c(u1,u2)
usort<-sort(Ucpt)
umin<-usort[1]

print("(3) U-test according to set")
print("stichproben:")
print(a1)
print (a2)
print(z1o<-(umin-((n1*n1))/2))
print(z1u<-sqrt(((n1*n1)*(n1+n1+1))/12))
print(z1<-z1o/z1u)
#z = -2.392
#according to meindl appendix table A 
#i.e. restfläche:
#p= 0.9916
#100-0.9959
#99.59% ablehnung der nullhypothese=kein latenzunterschied > hoch signifikanter latenzunterschied

#die signifikanzen sind noch nicht beständig, da die zwei stichproben unterschiedliche längen haben (gemessene delays)
#und ich das bisher nur über sample() anpasse, auf dasz die variablenlängen vergleichbar sind. ich könnte auch einfach
#die obergrenze kappen und von 2x27 observationen ausgehen, dann stellte sich das problem unterschiedlicher ergebnisse nicht,
#das schöne jedoch ist, dasz die hypothese bei jedem neuen sample trotzdem bestätigt wird, mit kleinen abweichungen im
#mean.
#ich bin mir unsicher, ob es sich bei den stichproben (gemessenen latenzen in 2x1 /1x2) um unabhängige oder abhängige
#stichproben handelt
#wilcox test für abhängige stichproben:
wilcox.test(sdis44,sdis52,alternative = "g",correct = F)
#hier p = 0.9916 p < 0.1
#yes, fits Utest above!
#############################
###12123.topic cont
###12123.topic cont
#mdl<-scan("xpo002/MDL_xpo_topicA_F52.001.md", what="char")
#mdl<-scan("MDL_xpo_topicA_F34.001.md", what="char")
mdlf52<-srcta52
mdlf34<-srcta34

#head (mdl)
library(stringi)
#mdl[1:20]

#print(stri_detect(mdl[1:20],"[[#*#]]"))


# x <- "Ham, spam,\njam, SPAM, eggs, and spam"
# stri_extract_all_regex(x, ".*am", case_insensitive=TRUE)
# ## [[1]]
# ## [1] "spam" "SPAM" "spam"
# mdl[1:20]
#stri_extract_all_regex(mdl,".*\\[.*\\]")
#wks

showdistance<-function(set){
  mdl<-scan(set, what="char")
  
  mdlreg<-stri_extract_all_regex(mdl,".*\\[.*\\]")
mdlreg2<-subset(mdlreg,!is.na(mdlreg))
mdlreg2

#scan(mdlreg2[1:10],sep = "#")               
mdl2<-stri_split(mdlreg2,regex = "#")
mdl2
mdl3<-unlist(mdl2)
mdl3[1:50]
#extract all distances [x], coded in topicA TS with #REF[0].REF[n].dx#
mdl4<-stri_extract_all_regex(mdl3,".*\\..*.+d.")
#mdl4<-stri_extract_all_regex(mdl3,".*\\..*")
#wks
# mdl5<-subset(mdl4,!is.na(mdl4))
# head(mdl5)
# mdl6<-stri_split(mdl5,regex = "\\.")
# mdl6[1:20]
# length(unlist(mdl6[3]))
# mdl6[2]
# match(mdl6,0)# nur so findet die 2
#mdl7<-stri_extract_all_regex(mdl6,".+d.")
#mdl7<-stri_extract_all_regex(mdl6,".*d.*") #all distances in list
mdl7<-stri_extract_all_regex(mdl3,".*\\..*.+d.*")
mdl8<-stri_split(mdl7,regex = "\\.")

mdl9<-subset(mdl8,!is.na(mdl8))
mdl9
mdl10<-(unlist(mdl9))
mdl10<-stri_replace( mdl10,replacement="",regex="d")
mdlns<-c("REF0","REF#","distance")
mdl11<-matrix(as.double(mdl10),ncol = 3,byrow = T)
colnames(mdl11)<-mdlns
median(mdl11[,3])
mdl11[,3]
#barplot(mdl11[,3])
#return(mdl11[,3])
mdldis<-mdl11
#print(mean(mdldis))
#print(median(mdldis))

}
tbl34<-showdistance(mdlf34)
tbl52<-showdistance(mdlf52)
dis52<-tbl52[,3]
dis34<-tbl34[,3]
mdlout52<-c(mean((dis52)),median(dis52))
mdlout34<-c(mean((dis34)),median(dis34))
max(dis34)
dis34
#mdlplotns<-c(mdlmean,mdlmedian)
mdlns52<-c("distance topic, mean/median F52")
mdlns34<-c("distance topic, mean/median F34")

barplot(dis52,main=mdlns52,xlab=mdlout52)
barplot(dis34,main=mdlns34,xlab=mdlout34)
boxplot(dis34,dis52)
mdlplot<-cbind(dis52,dis34)
#barplot(mdlplot,beside = T)
###12123.
#now find covariance between topic distance / latenz
tblsolo<-c(mdlout52,mn52)
tblensm<-c(mdlout34,mn44)
chisq.test(tblensm,tblsolo)
#p=0.1991
#topic stretch
tpa34<-tbl34[,1]
tpb34<-tbl34[,2]
tpa52<-tbl52[,1]
tpb52<-tbl52[,2]

ltp34<-length(unique(tpa34)) #count individual topics
ltp52<-length(unique(tpa52))
maxtp34<-max(tpb34) #max references
maxtp52<-max(tpb52)
#now feed into x square
tblsolo<-c(mdlout52,mn52,ltp52,maxtp52)
tblensm<-c(mdlout34,mn44,ltp34,maxtp34)
tblboth<-cbind(tblsolo,tblensm)
chisq.test(tblensm,tblsolo,correct = F)
#chisq.test(tblboth)
barplot(tblboth)
cov(tblensm,tblsolo)
(cor(tblensm,tblsolo))
#correlation at 0.946 # highly correlated
# 1 would be totale abhängigkeit
d2<-cor(tblboth)
#a1<-c(10:1)
#b1<-c(1000:1009)
#c1<-cbind(a1,b1)
#cov(c1)
#d1<-cor(c1)
#chisq.test(a1,b1)
d2[2]
tblsolo[1]*d2[2]
#bind cases into rows
tblboth2<-rbind(tblsolo,tblensm)
#cov(tblboth2)
#meindl p.224
mndis34<-mean(dis34)
mndis52<-mean(dis52)

tblsolo2<-c(mndis52,mn52,maxtp52)
tblensm2<-c(mndis34,mn44,maxtp34)
tblboth2<-rbind(tblsolo2,tblensm2)

dim(tblboth2)
tblc<-tblboth2
tblc[4]
ax1<-tblc[1]^2
by1<-tblc[3]^2
ax2<-tblc[2]^2
by2<-tblc[4]^2

c1<-tblc[1]*tblc[3]
c2<-tblc[2]*tblc[4]
sx<-sum(tblc[,1])
sy<-sum(tblc[,2])
sz<-sum(tblc[,3])
sc<-sum(c1,c2)
sb<-sum(ax1,by1)
sa<-sum(ax2,by2)
#apply(tblc,1,sum)
r<-(2*sc-sx*sy)/sqrt(abs((2*sa-sx^2)*(2*sb-sy^2)))
#sqrt((2*sa-sx^2)*(2*sb-sy^2))
#sq<-((2*sa-sx^2)*(2*sb-sy^2))
#sqrt(abs(sq))
t<-(abs(r)*sqrt(2-1))/(sqrt(1-r^2))
###12124.############################
#topic analysis of exb / xml extract essai
# 12126.
# @ barghoorn: hier habe ich einige probleme, die listen inhalte und attribute korrekt zu adressieren. ich 
# würde gern die id attribute extrahieren, in denen auf unterschiedlichen ebenen das transkriptsegment
# T[x] bezeichnet wird, diese bezeichnung dann mit anderen childs derselben liste vergleichen und dort
# die values für das attribut [start] und [end] dementsprechend extrahieren, damit ich den abstand der
# segmente bestimmen kann. 
# bitte für den nachvollzug das source für (topic52) ganz oben laden und (topic52) als read_xml einlesen,
# dann hier weitermachen.
# upd: quellen hier direkt laden.
srctaexb52<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/MDL_basisTS_12124_F52_excD.topicA.001.exb"
srcta52<-"https://github.com/esteeschwarz/essais/raw/main/docs/INT_CA/MDL/MDL_basisTS_12124_F52_excD.topicA.001.xml"
library(xml2)
library(xml)
topic52<-read_xml(srctaexb52)
xml_children(topic52)
ta2<-xml_children(xml_children(xml_children(topic52)))
print(ta2) #356 nodes, zu viel, müssen 138 children sein
ta2<-xml_children(xml_children(xml_children(xml_children(xml_children(topic52)))))
# 5 zu tief, nodes 0, in oxygen see at level 4
ta2<-xml_children(xml_children(xml_children(topic52)))

ta4<-xml_children(xml_children(xml_children(xml_children(topic52))))
match(attr(ta2,"id"=="T99"),ta2)
ta2[[20]][20][2]
ta_ties<-ta2[13:150]
#ta_times<-ta2[13:150]
ta_id<-xml_attr(ta_ties,"id",);ta_id # tids with times
ta_time<-xml_attr(ta_ties,"time",);ta_time # tids with times

ta2[[3]]
dim(ta2)
ta_events<-ta2[313:354]
ta_text<-xml_text(ta_events);ta_text #newly annotated times in annotation TIE13(S1), TIE4(S2)
ta_event<-xml_attr(ta_events,"start",);ta_event # tids with times
#xml_attr(ta2[2],"id",) # tids with times
#now match ta_event start id with corresponding ta_id attribut
match(ta_event,ta_id)
match(ta_event[12],ta_id)
ta_id[45] # at T28 in times
xml_text(ta_events[12]) #find occurence 7.1, now search for 7.0
match("7.0",xml_text(ta_events)) # auf pos 23, now same as above
match(ta_event[23],ta_id)
ta_id[32] # at T102


# now
#corresponding time in array
times<-as.double(xml_attr(ta_ties,"time",)) # tids with times
#wks.
times[45]-times[32] #wks. 8.58s topic distance 7.0 > 7.1
# 
# ta_ties
# ta3<-unlist(ta2)
# ta3<-unlist(ta2[13:150])
# attr(topic52[10:100],"id")
# dim(topic52)
# 
xmlParse("MDL_basisTS_12124_F52_excD.topicA.001.xml")
xmlParse()
xmlAttrs( topic52["//basic-body/tier"][5][1])
topic52
#no.