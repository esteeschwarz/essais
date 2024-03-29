#12054.item XML schemes
#20220304(13.23)
#hux2022 sprichworttest charite
#
#steps:
#1. build musteritems in https://soscisurvey.de
#1.1 2 items using kontext, question, mc test 6 options
#2. export template to .xml
#3.1 task: enable modification of template for reimport new question set into platform by importing new questions from csv-table where the remaining 62 items are stored
#with kontext, question and 6 options
#3.2 
#import data
#xmlschema
#install.packages("xml2")
library(xml2)
#library(Hmisc)
#clowess()
#download_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_2022-02-04.xml","template.xml")
#getRS()
#getRS(guser="esteeschwarz",grepo="essais",gdir="main")
#getRs(file=NULL, guser='harrelfe', grepo='rscripts', gdir='raw/master',
 #     dir=NULL, browse=c('local', 'browser'), cats=FALSE,
  #    put=c('rstudio', 'source'))
#download.file("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv","items.csv")


#scheme<-read_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_2022-02-04.xml")
#items<-read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv",skip=1)


#xml_text(scheme)
#library(tidyverse)
#print(a1<-xml_text(xml_node(scheme,8)))
#html_element()
#xml_name(scheme)
#xml_attr.xml_node(scheme,lead)
#xml_attrs(scheme)
#children1<-(xml_children(xml_children(xml_children(xml_contents(scheme)))))
#children2<-(xml_children(xml_children(xml_children(xml_children(xml_contents(scheme))))))
#children0<-(xml_children(xml_children(xml_contents(scheme))))
#children3<-(xml_children(xml_contents(scheme)))

#a1_cases<-(xml_text(xml_children(xml_children(xml_children(xml_children(xml_contents(scheme)))))))
#a1<-(xml_text(xml_children(xml_children(xml_children(xml_contents(scheme))))))

#a1<-antworten<-(xml_text(children1))
#items_complete<-a0<-(xml_text(children0))
#print (a0)
#print (a1)


#items3<-a3<-(xml_text(children3))

#a2<-xml_text(scheme,2)
#a2<-xml_text(children0[[3]])
#modify
#a1[7]<-"testing" #works
#4 now try append rows
#4.1  first compare csv data with xml fields
#item01<-items$target[1]
#print(item01)
#try change content
#item01<-items$frage[1]
#item_mod<-"warum gerad hunde?"
#items$frage[1]<-item_mod
#item01<-items$frage[1]
#print(item01)
#display question in xml
#print(a0[7])
#regular: 1+15=item02 start, 14positions per item, frage auf pos 6
#1+15 = 1+ 2*6 + y
#001: 1+1*14-  (6=14-x)
#formula to adress question: 1(first row) + itemnr*2*7-8
### > (a0[1+(1*2)*7-8])
#itemnr<-3
#itemadress<-1+(2*2)*7-8
#itemadress<-1+(itemnr*2)*7-8

#print(a0[itemadress])

##4.2 append in a0 itemnr, question + kontext
##4.3 append in a1 questions * 2

#print(a0)
#print(a1)
###########################################
#print(newitem)
#print(newopt)
#####
#itemx<-c()
#itemx[1]<-"item"
#itemx[2]<-itx
#print (itemx)

##4.2.2 append newitem
#newscheme0<-a0
#lscheme0<-length(a0)
#newscheme_top<-append (newscheme0,newitem,after=lscheme0)
#print(newscheme_top)
#newscheme1<-a1
#lscheme1<-length(a1)
#newscheme_opt<- append (newscheme1,newopt,after=lscheme1)
#print(newscheme_opt)

#newscheme_0<-children0
#newscheme1<-children1
#get positions within xml
#print(xml_text(children1[[28]]))
#print(xml_text(children1))
#newscheme1[[27]]<-"weil ich keine ahnung habe"
#print(xml_text(newscheme1[28]))

#sroot<-scheme

####write_xml(sroot,"scheme_essai.xml")
#writes, but no changes


#xml_child(sroot$doc)
#########################################################

#local:

#scheme<-read_xml("docs/w3school/qtemplate.xml")
#actualise:

refresh_scheme <- function(ret_file){
#old scheme<-read_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_2022-02-04.xml")
#items<-read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv",skip=1)
  
#scheme<-read_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_mod_12061.2022-02-04.xml")
#scheme<-read_xml("https://github.com/esteeschwarz/essais/raw/main/docs/hux2022/package_hux2022_fragen_templateB_mod_12061.2022-02-04.xml")
scheme<-read_xml(ret_file)

sroot<-scheme
}
refresh_data <- function(ret_file){
  items<-read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv",skip=1)
}


#refresh_data(xmlmod)
#setq<-refresh_base_q(schemeset)

refresh_base_q <- function(schemeset){
sroot<-schemeset  
#pos1<-xml_children(sroot)
#pos2<-xml_children(xml_children(sroot))
setq<-pos3<-xml_children(xml_children(xml_children(sroot)))
seta<-pos4<-xml_children(xml_children(xml_children(xml_children(sroot))))
#print(pos5<-xml_children(xml_children(xml_children(xml_children(xml_children(sroot))))))
set_answers<-pos4
set_question<-pos3
print(set_question)
print(set_answers)
return(setq)
}
refresh_base_a <- function(schemeset){
  sroot<-schemeset  
  #pos1<-xml_children(sroot)
  #pos2<-xml_children(xml_children(sroot))
  setq<-xml_children(xml_children(xml_children(sroot)))
  seta<-xml_children(xml_children(xml_children(xml_children(sroot))))
  #print(pos5<-xml_children(xml_children(xml_children(xml_children(xml_children(sroot))))))
  #set_answers<-pos4
  #set_question<-pos3
  #print(set_question)
  #print(set_answers)
return(seta)
  
  }

#refresh_base()
#val<-"text>because"
#val<-"text" #tag
#pos<-"test antwort replace" #text within tags
#print(xml_chsroot[8])
#children 3, replace works but content shit
#print(pos4)
#testreplace
#xml_replace(pos4[19], val, pos)
#i cant get replacement without / at the end of string... try vector
#works. with first tag, then text within tag
#works. but to proof have to actualise pos4
#now adress items generale
#lines formula in section (element) <items> (antwortoptionen)
#3,5,7,9,11,13 option A1-A6
#1,2 item id and position
#4,6,8,10,12 meta all same
#formel: ax = antwortoption
#######################################################
#############################################

get_question <- function(dataset,itemwitch,option){
  
  ###4.2.1
  #create new array with modifiying values
  #get new values of group items .csv
  newitem<-c()
  itx<-itemwitch
  items<-dataset
  
  newitem[1]<-items$item[itx] #description
  #newitem[2]<-"select"
  newitem[2]<-items$kontext[itx] #kontext
  newitem[4]<-"Weisen Sie der Frage die richtige Antwort zu." #explanation
  #newitem[5]<-"right"
  newitem[3]<-items$frage[itx] #fragetext
  #newitem[7]<-"default"
  return (newitem[option])
  
  
}

#print(get_question(1,4))
####works
#########################
get_item<-function (dataset,item,option){
  items<-dataset
  itx<-item
  
  newopt<-c()
  #newopt[1]<-itx
  #newopt[2]<-itx
  newopt[1]<-items$A1.[itx]
  #newopt[4]<-11
  newopt[2]<-items$A2[itx]
  #newopt[6]<-22
  newopt[3]<-items$A3[itx]
  #newopt[8]<-33
  newopt[4]<-items$A4[itx]
  #newopt[10]<-44
  newopt[5]<-items$A5[itx]
  #newopt[12]<-55
  newopt[6]<-items$A6[itx]
  #newopt[14]<-66
  
  return(newopt[option])
}


#get_item(1,4)
#works

#################
adress_answer<- function (set,itemnr,item_opt) {
pos4<-set
ax<-item_opt #antwortoption A1-A6
lquest<-length(pos4)
item_cpt<-64*14
antwort_adress<-
  optionx<-c(3,5,7,9,11,13) #A1-A6
item_adress_last<-(item_cpt/64*itemnr)

  item_adress_0<-item_adress_last-14
itempos<-(item_adressx<-item_adress_0+optionx[ax])

#print(pos4[itempos])
out_answer<-(set[itempos])
}
#######################################################
#works as function


#print (a1<-(adress_answer (pos4,2,1)))


###now for parent section (question, kontext) 
######################################################
adress_question<- function(set,itemnr,questionid){
pos3<-set
qx<-questionid
#print(pos3)
#qdescription<-1
#kontext<-2
#question<-3
#discomment to modify view
#qx<-qdescription
#qx<-kontext
#qx<-question

lquest<-length(pos3)
#formel adress line: 1+14 each

quest_cpt<-64*14+1
questionx<-c(2,4,7) #itemdescription,kontext,question
question_adress_last<-(quest_cpt/64*itemnr)

question_adress_0<-question_adress_last-14
questpos<-(question_adressx<-question_adress_0+questionx[qx])

print(pos3[questpos])
return(pos3[questpos])
}
############################################################


#print(adress_question(pos3,4,3))


#works 12062.14.17
##################
#now replace content
#itemdescription
#item_sample_content<-c()
#print(newitem)
#item_pos<-
#print(itemreplace(itemnr,item_pos))


replace_content<-function(dataset,seta,setq,item,pos_a,pos_q){
  
val_text<-"text" #tag, item
val_lead<-"lead" #tag, fragetext
val_descr<-"description" #tag, itemnumber
val_context<-"title" #tag, kontext
val_fail<-"tagfail"

ifelse(pos_q==1,tag<-val_descr,ifelse(pos_q==2,tag<-val_lead,ifelse(pos_q==3,tag<-val_context,ifelse(pos_q!=1:3,tag<-val_fail))))
#pos<-"test antwort replace" #text within tags
#children 3, replace works but content shit
#print(pos4)

set_answers<-seta
set_question<-setq
dataset<-dataset

#get_question(dataset,item,pos_q)
print(tst_aq<-adress_question(set_question,item,pos_q))
print(tst_aa<-adress_answer(set_answers,item,pos_a))
print(tst_rq<-get_question(dataset,item,pos_q))
print(tst_ra<-get_item(dataset,item,pos_a))
#works
#works
#muster: xml_replace(adress_[answer|question](options),val,get_[item|question](options))
#testreplace xml_replace(tst2,val ,tst_r )
####
xml_replace(tst_aq,tag ,tst_rq )
xml_replace(tst_aa,val_text,tst_ra)
####
#works
}

####################
#################
#check replacement
#qscheme_output<-c()

#call data
#refresh_base_a(scheme)

#seta<-pos4
#setq<-pos3



#refresh_base()
#works
########################################### THIS GLOBAL

xmlorigin<-("https://github.com/esteeschwarz/essais/raw/main/docs/hux2022/package_hux2022_fragen_templateB_mod_12061.2022-02-04.xml")
xmlmod<-("qscheme_output.xml")

datenset<-("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv")

schemeset<-refresh_scheme(xmlmod)
#schemeset<-refresh_data(xmlorigin)
seta<-refresh_base_a(schemeset)
setq<-refresh_base_q(schemeset)

print(seta)

items<-refresh_data(datenset)

print(get_question(items,6,3))
print(get_item(items,6,6))
print(adress_question(setq,6,1:3))
print(adress_answer(seta,6,1:6))


#####call replacement
replace_content(items,seta,setq,6,6,3)

#####proof

proof_scheme<-function(scheme_mod){
#initiate seta,setq
  sroot<-scheme_mod
  setq<-xml_children(xml_children(xml_children(sroot)))
  seta<-xml_children(xml_children(xml_children(xml_children(sroot))))
  set_mod<-c(seta,setq)
}
#write_xml(schemeset,"qscheme_output.xml")
#read_xml("qscheme_output.xml")



############################################## works 12062(23.54)
#print(pos4)
#print(pos3)
###############################
#5.now loop through the items and replace according to table actualise

# 
# 
# print(xml_children(xml_children(xml_children(xml_children(sroot))))[28])
# print(xml_children(xml_children(xml_children(xml_children(sroot)))))
# print(xml_children(xml_children(xml_children(sroot))))
# #vector geht bis 28
# #now try append after usage: set, value, position
# ####xml_add_parent(xml_children(xml_children(xml_children(xml_children(sroot)))), val, .where="after")
# ###xml_add_child(xml_children(xml_children(sroot)), pos1, .where="after")
# print("append essai")
# print(pos2)
# print(xml_text(pos2))
# #print(pos0)
# print(pos1)
# print(pos2)
# print(pos3) #pos 3 (child of question containing items) musz verdoppelt werden
# #xml_add
# xml_parents(pos4)
# #pos0
#  #xml_add_child(pos3, pos2[4], .where="after") #this hangs up
# # pos1[62]
# #print(xml_children(xml_children(xml_children(xml_children(sroot)))))
# #print(xml_children(sroot)[2])
# print("after append")
# print(pos2[5])
# print(pos1)
# print(pos2)
# print(pos1[8])
# ########################################
# 
# print(qpath0<-xml_find_all(sroot,"/*/*/*")) #question node
# print(qpath<-xml_find_all(sroot,"/*/*/*/*")) #question node
# print(par4<-xml_parents(pos4)) #these to duplicate childs, now 18, each item 9 rows
# print(item002<-(par4))
# #n<-print(nodes(qpath))
# xml_contents(pos4)
#  xml_add_parent(par4,item002) # parent qpath0,qpath / child,0,p,after / ch,0,p,0
# print(par4)[item]
 
  #ch,0,p,0 > fügt <item><text>...(qpath[10]11... direkt nach dem ersten tag ein)
 # s,0,p,after: hat 28 pos zu 0 und p hinzugefügt und 
#first child in p is ab 9 / p,p,after: no warnung, hat qpath verdoppelt: könnte klappen
#c,0,0,after: xml_add_child(qpath0,qpath0, .where=0: 5 in p dazugekommen nach attr
#xml_add_child(qpath0,qpath, .where=length(xml_children(qpath0)))
 #xml_add_parent(qpath0,qpath, .where=length(xml_children(qpath0)))
#xml_add_parent(qpath,qpath) nothing happens
 #print(pos2[6])
# print(xml_text(pos3))
# print(xml_text(pos2[5]))
# 
# print(xml_text(pos2))
# 
# print(xml_attrs(pos2)[5])  
# 
# frset5<-(xml_attrs(pos2)[5])
# print(frset5)
# 


#print(xml_attr(sroot,"character",ns="section"))
#print(sroot$doc)

###xml_replace(newscheme1[28],.value="BOUNCE")

############################################# from here earlier state #######################
















#qscheme <- read.csv("qscheme.csv", sep=";")


#itemtabelle
#templ <- read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/blob/master/hux2022/proverbs/12054_qscheme/template.csv", sep=";")

#per item:
#2 leerzeilen
#6 *2 optionen
#14 zeilen
#3,4 A1
#5,6 A2

# 
# 
# check1<-2+6*2
# print(qscheme$answer[1:14])
# qscheme$answer[13]<-"test change"
# print(qscheme$answer[1:14])
# #works, restor
# qscheme$answer[13]<-qscheme$answer[14]
# print(qscheme$answer[1:14])
# #works.
# ## assign template
# qscheme$answer[13]<-template$A5[1]
# print(qscheme$answer[1:14])
# #works
# opt1<-1
# opt2<-opt1*2
# #loop
# 
# for (x in opt1:length(qscheme$itemid)) {
#   optv<-opt1*x
#   optv1<-optv/14
#   print(optv1)
#   #wenn x ein vielfaches von 14 ist
# 
#   }
# 
# 14*64
# #896
# 64/4
# 
# questid<-c(1:optv1)
# opv1<-questid
# #now double each
# questid2<-c(0,0,opv1[1],opv1[1],opv1[2],opv1[2],opv1[3],opv1[3],opv1[4],opv1[4],opv1[5],opv1[5],opv1[6],opv1[6])
# print(questid2)
# #now loop
# #16 item, 4 gruppen, 2*(6 optionen+ 1 leerzeile)
# 16*7*2*4 #896
# 896/14 #64 items
# #x2 loop formel:
# 768/6 #128
# 64*2
# 128*6
# 16*6*2
# 
# #x2 in 6er schritten
# 16*6*2*4 #768
# x2f<-c(1:128)
# x2f2<-x2f*6
# x2f3<-
# #for(x3 in 1){
# rr<-(function(x,y){z<-x^2+y^2;x+y+z})(0:7,2)
# norm<-function(x) x*6
# x2f3<-c(norm(1:64))
# print (x2f3)  
#   fill<-  function(id5){
# id0<-c()      
# id1<-c()      
# 
#     #append(id0, 1:5, after =3)
# for (x1 in 1){
# #x2<-x1+6
#   #inner loop 1
# for (x in x2f2) {
# questid3<-c(0,0,x,x,x+1,x+1,x+2,x+2,x+3,x+3,x+4,x+4,x+5,x+5)
# print(questid3)
# id1<-append(id0,questid3)
# }
# #  print(questid3)
#   #return this to vector!
# #id0<-c()  
# #id2<-append(id1,questid3)
# #questid4<-c(questid3[1]:length(questid3))  
# }
# }
# print(id0)
# questid4
# 
# print(questid3)
# print(questid4)
# 
# #let two rows empty, then put numbers 1-6 each twice in the following rows.
# #then let again 2 rwos empty, put numbers 7-12 and so on
# 
# 
# 
# 
# 
# 
# #A1_1<-c(opt0*3,opt0*4)
# #A1_2<-c(opt1*5,opt1*6)
# opv1[2]
# #created row with length of options complete
# check2<-optv/16/4 #16 items in 4 gruppen
# check3<-check2/check1  #should be 1
# 
# 
# # how to fill in questionid row 29-42 with two empty + 2*6
# 
# print(qscheme$questionid[29:42])
# 
# 
# 
