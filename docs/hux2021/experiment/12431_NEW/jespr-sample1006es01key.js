/*
 * Title: jespr-sample1.js
 * Author: Ralph L. ROSE
 * E-mail address: rose@waseda.jp
 * Description: This file defines an experimental design to be used in a
 * JESPR experiment.
 * License: The MIT License (MIT)
 */


var jesprExperimentDesignForKey = { //actuel 11284///// items in: 2,5,6,10,11,12,18,26
    "title": "[ESTEE EXT.]",
    "investigators":[ {
        "primary": "[SPACE]"
    }, {
        "other": ""
    }],
    "font-name": "courier",
    "font-size": "14",
    "text-color": "black",
    "background-color": "lightgray",
    "display": "moving-window",
    "orientation": "vertical", //-horizontal
    "masking-character": "*",
    "fixation-character": "X",
    "min-instruction-time": "500",
    "show-progress-bar": "true",
    "input-method": "keyboard",
    "quote-mark": "double_quote",
    "show-results-display": "true",
    "show-log-display": "true",
    "feedback-options":[ {
        "name": "correct",
        "string": "gut",
        "text-color": "green"
    }, {
        "name": "incorrect",
        "string": "naja",
        "text-color": "red"
    }],
    "instruction-screens":[ {
        "id": "instruction1",
        "string": "testrun 001"
    }, {
        "id": "instruction2",
        "string": "just check time count"
    }],
    "instruction-screens":[ {
        "id": "instruction1",
        "string": "...[SPACE]..."
    }, {
        "id": "instruction2",
        "string": "...[SPACE]..."
    }],
    "practice-stimuli": {
        "order": "fixed",
        "items":[ {
            "item": {
                "id": "practice01",
                "string": "...[SPACE]...",
            
            }
        }, {
            "item": {
                "id": "practice02",
                "string": "...[SPACE]...",
          
            }
            
          
            
        },   {
            "item": {
                "id": "practice03",
                "string": "...[SPACE]...",
             /*    "prompt": "Sind Sie schon gespannt, oder?", 
                "options":[ {
                    "string": "ja, sehr.",
                    "feedback": "okay. dann gehts gleich los."
                }, {
                    "string": "naja...",
                    "feedback": "fangen wir jetzt trotzdem mal an..."
                }]*/
            }
        
        }
        ]
    },
    "post-practice-instruction-screens":[ {
        "id": "instruction3",
        "string": "12431."
    }],    "experiment-stimuli": {    // endklammern begin of groups:  ] } } ] }
        "order": "fixed",
        "merge": "true",///-true
        "stimuli-sets": [             //   /
        {
                "stimuli-set": {
                    "name": "all",
                    "order": "random",   //-fixed  (mit random werden alle stimuli incl. filler global randomisiert)
                    "merge": "true", ///-true
                    "groups": [
                        {
                            "group": {
                                "name": "EM",
                                "order": "fixed",
                                "items": [
                     {
                                        "item": {
                                            "id": "EM001",
                                            "tags": [ "RUB", "1EM" ],
                                            "string": "ewig alles ablegen, das dich erinnern will.| so wirst du ins grosze fahrtenbuch der andern eingeschrieben,| auch wenn alles l??ngst aus dir geht.| {aber halte die asche dieses lebens noch fest,} |die dir von ihnen geblieben.| nur entledige dich, wachse heran zu ihrem einzigen grund.",
                     
                                        } 
                                    },      
                                    
                            {
                                        "item": {
                                            "id": "EM002",
                                            "tags": [ "RUB", "2EM" ],
                                            "string": "das Wort ist nur Chirurg geblieben |so lange als ich ihm erlaubte| {die H??nde warm zu halten}| vor dem Hirn dem ewig kalten Ort| da geht es hin |da bleibt es ungeglaubt| die H??nde werden einmal steif und kalt uns abwehrn| unsere H??nde die wir ewig lieben| nur das Wort bleibt uns erhalten Chirurgie| verlassen und die W??nde die mich einsperrn| tr??sten wird die Elegie",
                     
                                        } 
                                    },      
                                    
                                    
                                 
                                         ]
                            }
                        },
                              {
                            "group": {        
                                "name": "SM",
                                "order": "fixed",
                                "items": [
                                    
                                    
                                    
                                    {
                                        "item": {
                                            "id": "SM001",
                                            "tags": [ "RUB", "1SM" ],
                                            "string": "legen ab mit dem dampfer. |das land in front, wir fahren r??ckw??rts?| weisz nicht, wie weit das zweite ufer noch weg, |irgend nebel liegt ??ber dem meer. |{halte die asche dieses lebens noch fest,} |die ich lang gesammelt habe. |in berlin w??chst der kompost auf dem brandplatz.",
                    
                                        }
                                    },
                                    
                                
                                    
                                 
                                           ]
                            }
                        },
                              {
                            "group": {        
                                "name": "LC",
                                "order": "fixed",
                                "items": [
                                    
                                    
                                        
    ///remove comment next line for revealing items                          
   
                                  
                                  
                                      {
                                        "item": {
                                            "id": "LC002",
                                            "tags": [ "RUB", "2LC" ],
                                            "string": "etwa aufgeworfene felder gegen das neue jahr;| also abgeerntet, gepfl??gt, |zarter gr??ner flaum darauf.| {man sieht die lange zeit noch dazwischen,}| den winter, der nochnicht ist.| es legen sich alle zur ruhe.",
                                         }
                                    }, 
                                      {
                                        "item": {
                                            "id": "LC001",
                                            "tags": [ "RUB", "1LC" ],
                                            "string": "ich stelle mir vor: |die weggegabelte entscheidung, |{ca. der reine bezug. }|am andern ende die verkabelung ist ausgel??st, |weil import  des datamaterial lange verschoben. |hier nurkreisen von motten. |in merkw??rdigen kreisen. |kann das nicht richtig sehen, |was sie ins holz schreiben, |aber ich bin mir sicher, |sie haben etwas zu sagen. |soll keine fehler schreiben. |soll keine geb??rden mehr.",
                                         }
                                    }
                           
                                              
      
                                ]   //items                
                            }    // group LC
                        },     ///group
                        
                          
                        
// hier comments end for testphase
                      
  {
                            "group": {
                                "name": "MM",
                                "order": "fixed",
                                "items": [
                                    
                                    {
                                        "item": {
                                            "id": "MM002",
                                            "tags": [ "RUB", "2FIL" ],
                                            "string": "z??hlen Sie uns zu den mandeln. |wie weit wir uns verausgaben..., |alle striche stets umsonst.| warum wir f??llmaterial brauchen: |das gesch??ft mit dem humus vielleicht, |{darin ihr alle aufgehoben der auferstehung entgegen usw.,}| bis :namen: :orte: verschwimmen. |(land) ??berall.| eure scheisz heimat im geiste.| z??hlen Sie mich zur mandel hinzu.",
                    
                                        } 
                                    },   
                                    
                                    
 {
                                        "item": {
                                            "id": "MM001",
                                            "tags": [ "RUB", "1MM" ],
                                            "string": "m??nch am meer,| der in den sand, der in die wiedergeborene linie am morgen |{seinen fusz setzt.}| w??gt den tag ab: |eine neue aufgabe, |eine die wartet, |eine die jetzt schon vergangen.",
                    
                                        } 
                                    },  
                          
                                    
                                    
 
                                    /* filler
                                    {
                                        "item": {
                                            "id": "MM16",
                                            "tags": [ "RUB", "16MM" ],
                                            "string": "Martin war Gourmet.| Er lie?? nichts anbrennen, wenn es um gutes Essen ging.| Auch vermeintliches 08/15 Essen| trifft bei seinen Sinnen ins Schwarze.| In Falafel z.B. k??nnte er baden.| Heute verputzte er schon 2x Falscher Hase vom Grill.| Er ist mit der Nase ??ber den Laden gestolpert.| Er konnte schon von weitem den Braten riechen.| Das passiert ihm ??fter,| wenn er durch die Stadt tigert| und seinen R??ssel ausstreckt.",
                                                "prompt": "Wie fassen Sie ???den Braten riechen??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    },             
                                    
     
                                    
                                    
  {
                                        "item": {
                                            "id": "MM7",
                                            "tags": [ "RUB", "7MM" ],
                                            "string": "Ronja hatte schon vor Jahren das Junglefieber gepackt.| Wie nach einer Gehirnw??sche kam sie auf den Trichter,| bei einer Jungleexpedition aufzusatteln.| Ihre Eltern klopften auf Holz,| als Ronja das Nest verlie??.| Als Talisman gaben sie ihr einen Wanderstab mit.| Er war aus demselben Holz geschnitzt| wie die Eingangst??r ihres Hauses.| Ronja konnte sich auf die Aufregung ihrer Eltern keinen Reim machen.| Der Jungle ist kein Ponyhof, das war ihr klar.| Aber dass die Natur sie verschlucken w??rde, glaubte sie nicht.",
                                                "prompt": "Wie fassen Sie ???aus dem selben Holz geschnitzt??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    },             

                                    
    
                                    
                                    
 {
                                        "item": {
                                            "id": "MM8",
                                            "tags": [ "RUB", "8MM" ],
                                            "string": "Silas versumpfte in letzter Zeit h??ufiger| in den schr??gsten Ecken der Stadt.| Seine alte Stelle war ihm fl??tengegegangen.| Silas war sofort eine neue zugeflogen,| jedoch fehlte ihm gerade der Funken,| um wieder richtig Gas geben zu k??nnen.| Bevor er Makler wurde,| h??pfte Silas auf dem Bau herum,| bis er sich den R??cken zerschossen hatte.| Zumindest muss er sich jetzt| die H??nde nicht mehr schmutzig machen,| sagt er immer. Silas gef??llt es viel mehr,| butterweiche H??nde zu haben, anstatt Reibeisen.",
                                                "prompt": "Wie fassen Sie ???sich die H??nde schmutzig machen??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    },             
                                    
                                    
     
                                    
                                    
 
 
                                     
                                    
 {
                                        "item": {
                                            "id": "MM9",
                                            "tags": [ "RUB", "9MM" ],
                                            "string": "S??ren liebt es im Chaos zu baden.| Entsprechend sah es bei ihm auch aus| wie bei Hempels unterm Sofa.| Er sah sich jedoch eher| als Kurator eines Stilllebens.| Zumindest bis das bunte Rabenk??ken| auf seiner Fensterbank aufschlug und durch seine Galerie bretterte.| S??ren musste seine k??nstlerischen Ausgeburten schlie??lich begraben| und der Rabe unterschrieb einen Mietvertrag.| S??ren erkannte den Wink des Schicksals| und sieht den Raben jetzt als Sprungbrett in die Raben-Performancekunst.",
                                                "prompt": "Wie fassen Sie ???es flog ihm zu??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }, 
                                    
                                    
 

 
                                    
 {
                                        "item": {
                                            "id": "MM10",
                                            "tags": [ "RUB", "10MM" ],
                                            "string": "Merve driftet h??ufig in komplett andere Sph??ren ab.| Dann scannt sie mit Laserblicken| die Umgebung nach magischen Ereignissen| und klebt f??rmlich an den Dingen.| Als Faultier und Elephant im Porzellanladen| lebt sie die meiste Zeit im Reich zwischen den Extremen,| au??er bei Spezialmissionen.| Jedoch ist ihr dabei letztens eine Flasche mit lila Rauch| f??r ihren Djinn-Trick fl??ten gegangen, inklusive Monsterwolke.| Sie schwebte durch den Raum.| Eine Legende, die sich Abenteurer noch heute erz??hlen.",
                                                "prompt": "Wie fassen Sie ???sie schwebt durch den Raum??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }, 
                                    
 
 
 
                                    
 {
                                        "item": {
                                            "id": "MM11",
                                            "tags": [ "RUB", "11MM" ],
                                            "string": "Petra war Richterin und konnte Argumente, scharf wie Messer, formulieren.| Zuletzt verknackte sie jemanden,| der nicht nur sein Auto tankte,| sondern sich vor dem Fahren auch gerne selber ordentlich die rostige Gurgel ??lte.| Beim letzten Mal knutschte er dann den Asphalt.| Es war ein Rausch sondergleichen.| Solche F??lle stehlen Petra die Worte| und sie verdammt den Angeklagten vor der Urteilsverk??ndung| mit h??llischem Schweigen.",
                                                "prompt": "Wie fassen Sie ???es war ein Rausch sondergleichen??? auf?",
                                              "options": [
                                          {
                                               "string": "w??rtlich",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "fig??rlich",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }, 
                                    
 
                                    
 
 
                                    
 {
                                        "item": {
                                            "id": "MM12",
                                            "tags": [ "RUB", "12MM" ],
                                            "string": "Harry war ein ??berflieger,| wenn es um Tetris ging.| Mit blitzge??lten Bewegungen ratterte er ??ber die Tasten,| doch sonst sah man nur eine steinerne Statue vor dem Spielautomaten.| Seine Gedanken lebten in einer Art Blase| und waren immun gegen das schrille Geschnatter der zuschauenden Zaung??ste.| Wie in einem Tornado gefangen| zwirbelte Harry die Tetris-Steine in die richtige Position,| bevor sie weiter fielen und aufschlugen.| Es war ein turbulenter Fall.| Harrys Highscore jedoch explodierte immer weiter nach oben.",
                                                "prompt": "1) Es geht darum, dass etwas hinabf??llt. 2) Es geht um etwas wie den Verlust von Erfolg. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }, 
 
                                    

 

                                    
 {
                                        "item": {
                                            "id": "MM13",
                                            "tags": [ "RUB", "13MM" ],
                                            "string": "Peters Musik war ein Jungbrunnen f??r die Sinne.| Jeden Sonntag tigerte er durch die Stadt| und verzauberte sie mit seinen Beschw??rungen.| Sein Instrument hatte er aus verschiedensten Tr??mmern zusammengegossen.| Es hatte eine gute Resonanz.| ??u??erlich war es ein Monster.| Innerlich ein verspieltes K??tzchen.| Peter war ein Stern am Himmel dieser Stadt.| Er brachte Herzen zum Gl??hen und Berge zum Weinen.",
                                                "prompt": "1) Es geht um akutische bzw. klangliche Eigenschaften. 2) Es geht um die Wirkung die beim H??rer ausgel??st wird.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }   ///}]}}
        
                                     
                                    
 {
                                        "item": {
                                            "id": "MM17",
                                            "tags": [ "RUB", "17MM" ],
                                            "string": "Wir waren die Sch??ler des Films, der uns etwas ??ber Phantastik beibrachte.| Identit??ten von Tieren und Charakteren waren rostige Schrauben, die der Regisseur st??ndig austauschte.| Zum Beispiel fand sich Dr. Dings ??? eben noch in seiner New Yorker Kanzlei sitzend ??? pl??tzlich mitten im Meer wieder:| Der Anwalt war ein Hai. ",
                                                "prompt": "Warum taucht in der Geschichte ein Hai auf? 1) Es geht um die brutale Rhetorik des Rechtsvertreters. 2) Es geht um die Verwandlung eines Menschen in ein Tier.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }  , 
                        
                                            
                                    
 {
                                        "item": {
                                            "id": "MM18",
                                            "tags": [ "RUB", "18MM" ],
                                            "string": "F??r Lars war das Aufstehen eine Zwangsarbeit.| Jeden Morgen weigerte er sich so lange, das Steuer seines Lebens zu ??bernehmen,| bis Ksenia ihn wachr??ttelte.| Bis ins hohe Alter wuchs er aus seinen Kinderschuhen nie ganz heraus. ",
                                                "prompt": "Wie verstehen Sie die markierte Passage? 1) Es geht um das morgendliche Aufwachen aus seinem Schlaf. 2) Es geht um ein spirituelles, politisches, o.??. Erwachen.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }   ,
                                    
                                                          
 {
                                        "item": {
                                            "id": "MM19",
                                            "tags": [ "RUB", "19MM" ],
                                            "string": "Wenn Hegel philosophierte, entriss er der Philosophie jeden Boden.| Manche sagen, er knipste ihr das Licht an, andere meinen, er versenkte sie im Meer.| Eines Tages war er bei seiner morgendlichen Kopfstand??bung in dieser Position eingeschlafen!| Zum Gl??ck wurde Hegel endlich durch Marx| vom Kopf auf die F????e gestellt.",
                                                "prompt": "Warum stellt Marx Hegel auf die F????e? 1) Er befreit Hegel aus einer schief gelaufenen gymnastischen ??bung. 2) Es geht um Marx??? Auseinandersetzung mit Hegels Philosophie.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    } 
                                    
                            /*                
                                                          
 {
                                        "item": {
                                            "id": "MM20",
                                            "tags": [ "RUB", "20MM" ],
                                            "string": "Eigentlich wollten wir die Nachteule im Regal l??ngst durch einen neuen Staubf??nger ersetzt haben,| weil sie uns nachts in unseren Tr??umen heimsuchte.| Weil Putzfee Erna jedoch besessen davon war,| entschieden wir uns dazu, dem ausgestopften Vogel| nur ein Auge zuzudr??cken,| was bei Erna Luftspr??nge ausl??ste.| Sie war froh, wenigstens ein wachsames Auge in der Wohnung zu wissen.",
                                                "prompt": "Warum wurden dem Vogel die Augen nicht einfach entfernt? 1) Weil Erna das nicht h??tte durchgehen lassen. 2) Weil es besser ist, wenn einer nachts auf uns aufpasst.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    }   */
                        
                        
 
                                    
      
                                ]
                            }
                        } ,
                        
                        
// hier comments end for testphase
                      
  {
                            "group": {
                                "name": "filleritems",
                                "order": "random",
                                "items": [
                                    {
                                        "item": {
                                            "id": "filler01",
                                            "string": "Ronja war in etwa so beweglich wie ein Baum.| Der Apfel f??llt nicht weit vom Stamm| und Ronjas Schwester war aus demselben Holz geschnitzt| wie Ronja und ihr Vater.| Nur ihre Mutter war eher ein Springkraut:| flexibel, beweglich, kann in k??rzester Zeit ganze Fl??chen besiedeln.| Ronja musste trotzdem am Sportunterricht teilnehmen.| Und obwohl sie wie ein Felsen dastand,| hatte sie mehr Spa?? am Sport als alle anderen zusammen.",
                                     /*             "prompt": "Ergibt das Sinn?",
                                              "options": [
                                          {
                                               "string": "ja",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "nein",
                                               "feedback": "okay."
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerem01",
                                            "string": "Nach Martas Meinung war Depression eine Kr??te,| die schmierig auf deinem Kopf hocken konnte,| bis sie endlich doch noch herunterrutschte.| Die Traurigkeit aber, in  der sie die letzten zehn Tage verbracht hatte,| war eine andere.| Hektisch und aggressiv.| {Mit scharfen Krallen.}| Sie hatte nicht auf Marta gesessen,| sondern sie richtig ??berfallen.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerlc03",
                                            "string": "Helen hatte acht Jahre an der medizinischen Fakult??t verbracht| und weitere vier Jahre mit der Ausbildung zur Herzchirurgin,| bevor sie ihren ersten Job bekam.| Trotz dieser langen Zeit hat sie ihre Entscheidungen nie in Frage gestellt.| Schon als Kind wollte sie ??rztin werden.| Am st??rksten f??hlte Helen sich immer zu Beginn einer Operation,| {wenn sie ihr Skalpell nahe am Herzen ansetzte,}| das Leben ihrer PatientInnen in ihren H??nden.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                         {
                                        "item": {
                                            "id": "fillerem04",
                                            "string": "Wenn Ginas B??roangestellte kooperativ waren,| konnten sie gro??artige Dinge zusammen erreichen.| Sie waren ein Chor in perfekter Harmonie;| die zarten T??ne des Soprans| f??gten sich perfekt ein in das m??chtige Donnern der B??sse.| Nach der Performance musste Gina lediglich| {die Blumenstr??u??e aufheben, die man auf die B??hne geworfen hatte.}| Wenn sie jedoch unkooperativ waren,| war die sich ergebende Kakophonie ein Angriff auf die Sinne.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "fillerlc07",
                                            "string": "Ronja ist in den Bergen aufgewachsen| und an ein naturnahes und k??rperlich anspruchsvolles Leben gew??hnt.| Abends, nach einem langen Tag,| besch??ftigt sie sich auch gerne k??nstlerisch,| stellt Figuren her.| Zuletzt hat sie einen Luchs gemacht.| {Der ist aus demselben Holz geschnitzt}| wie das Nachtk??stchen, dass sie sich gebaut hat.| Ronja hat ??ber die Jahre vielerlei Fertigkeiten erlernt.| Sie sehnt sich jedoch auch nach Neuem.| Ihr gro??es Ziel ist eine Reise durch die Mongolei.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillersm08",
                                            "string": "Silas ist Kriminologe und interessiert sich schon seit seiner Kindheit f??r Kriminalf??lle.| Da Silas parallel ein Interesse in Naturwissenschaften entwickelte, war Kriminologie das Beste, was er studieren konnte.| Er hatte schon immer wissen wollen, wie es dazu kommt, dass sich Menschen| {die H??nde schmutzig machen.}| Die Motive, die inneren Konflikte, und nat??rlich mit welcher Technik die T??ter gefasst werden.| Am meisten fasziniert ihn noch immer die DNA,| und wie so etwas Kleines so deutliche Spuren hinterl??sst.",
                       /* 
                        
                                                  "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerem09",
                                            "string": "S??ren hatte viel Gl??ck im Leben.| Sein Reichtum war regelrecht vom Himmel gefallen und wenn er Probleme hatte, wurden sie ohne gro??en Wirbel einfach weggeweht.| Alles fiel ihm in den Scho??.| Und all das, ohne dass er dem Gl??ck je entgegenfliegen musste.| S??ren lebte mit den Winden, sagen einige,| manche nannten ihn einen Luftikus.| Doch verflogen hatte er sich im Leben nie.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                    
                                     {
                                        "item": {
                                            "id": "fillerlc13",
                                            "string": "Peter kaufte sich vor kurzem eine Ukulele.| Es war schon immer sein Wunsch gewesen, noch ein Instrument zu lernen.| Sogar den Nachbarn gefiel die Idee.| Er verbrachte ohne M??he viel Zeit beim Spielen| und der Klang im Wohnzimmer war sehr gut.| {Dieses hatte eine tolle Resonanz.}| Seither veranstaltet er kleine Konzerte,| was den Zusammenhalt unter den Nachbarn st??rkt.| Die Ukulele hat Peter zu ganz neuen Ausdrucksm??glichkeiten und FreundInnen verholfen.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                     {
                                        "item": {
                                            "id": "fillerem14",
                                            "string": "Lea hatte sich angew??hnt,| ihren Bruder Matti nur noch als das Grab der Familie vorzustellen,| seit dieser immer mehr in den dunklen Machenschaften einer Bande Kleinkrimineller aufging.| Er empfand sein neues Leben hingegen durchaus als Bereicherung| und hatte keine Ahnung,| warum sie ihm vorwarf,| {er w??rde das Gold der Familie versilbern.}| Er dachte immer, mit ihr auf einer Wellenl??nge gewesen zu sein.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerlc16",
                                            "string": "Martin ist Autor von Kochb??chern.| Er kocht nicht nur aus Leidenschaft,| sondern ist darin sogar etwas obsessiv.| Daher lebt er in einer gro??en Wohngemeinschaft,| damit er gro??e Mengen f??r viele Menschen kochen kann.| Heute gibt es Gans.| Schon an der geschlossenen Haust??r kann man| {den Braten riechen.}| Martin erfindet t??glich neue Rezepte und es kommt selten vor,| dass es jemanden nicht schmeckt.| Daher l??dt er auch gerne Gourmets ein,| die spannend ??ber Essen reden k??nnen.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerem17",
                                            "string": "Esra wollte ihren ehemaligen Arbeitgeber vor Gericht in Frikassee verwandeln.| Doch sie wusste nicht, dass die Firma sich von einem der gef??hrlichsten Raubtiere im Meer vertreten lie??.| Keines seiner Opfer war je von ihm verschont worden.| {Der Anwalt war ein Hai.}| Wen er zwischen die Z??hne bekam, der konnte damit rechnen, im Gerichtssaal zerfetzt zu werden.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerem19",
                                            "string": "Hegels Vorstellung vom dialektischen Idealismus war eine Kopfgeburt gewesen.| Generationen von nachfolgenden PhilosophInnen bekamen Kopfschmerzen von einem derart schwindelerregenden Konstrukt.| Zum Gl??ck wurde Hegel endlich durch Marx| {vom Kopf auf die F????e gestellt.}",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "fillerem20",
                                            "string": "Eigentlich sollten die Figuren im Regal daf??r sorgen,| dass Erna stets alle H??nde voll zu tun hatte, wenn sie staubwedelnd durch die Wohnung fegte.| Die Putzfee hatte jedoch ein Geistesblitz ereilt,| als sie einmal zuf??llig lange genug vor einem der Staubf??nger verweilt war.| Man musste bei manchem Reinigungsakt einfach| {ein Auge zudr??cken,}| dann s??uberten sich die Regale wie von selbst.| Ihre Kinder waren ohnehin blind f??r den Schmutz.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                     {
                                        "item": {
                                            "id": "fillerlc21",
                                            "string": "Inge liebte es, |an den Wochenenden die Flohm??rkte nach second hand Kleidung zu durchst??bern| und auf Schn??ppchenjagd zu gehen.| Von der Verk??uferin| {wurde ihr der Spiegel vorgehalten,}| w??hrend sie geschickt mit ihr um den Preis feilschte. ",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "fillerem22",
                                            "string": "Anna und Luisa waren ein Herz und eine Seele.| Lange Zeit steuerten sie gemeinsam durch dick und d??nn,| bis sie eines Tages vom Kurs abkamen |und ihre Freundschaft | {den Bach runter ging.}",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                         {
                                        "item": {
                                            "id": "fillerlc23",
                                            "string": "Endlich war es da -| das lang ersehnte Wochenende im Vergn??gungspark.| Tom und seine FreundInnen reihten sich wieder und wieder in die Schlangen der Wartenden. | Sie lie??en keines der Fahrgesch??fte aus. | Ihr Highlight war ein Ritt auf der Achterbahn.",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "fillersm25",
                                            "string": "Die Gef??hle seiner Mitmenschen ber??hrten Simon nicht.| Wenn jemand um ihn herum zu emotional war,| {wurde er zum Stein.}| Er war kein guter Zuh??rer,| der durch seine blo??e Anwesenheit Trost und W??rme gespendet h??tte.| Vielmehr blieb er regungslos und lie?? sein Gegen??ber mit dessen Problemen allein. ",
                       /*                            "prompt": "Haben Sie den Text aufmerksam gelesen?",
                                              "options": [
                                          {
                                               "string": "Ja",
                                               "feedback": "Gut."
                        },
                        {
                                               "string": "Nein",
                                               "feedback": "Das sollten Sie aber bitte!"
                        }
                    ]*/
                                        }
                                    },
                                    
                                    
                                    
                                     {
                                        "item": {
                                            "id": "filler02",
                                            "string": "Silas war B??rsenmakler in einem eher kriminellen Unternehmen.| Er war jemand speziell f??r die dreckigsten Tricks beim Kundenfang und Spekulieren.| Er konnte aus M??ll Geld machen.| Es war f??r ihn kein Problem, sich die H??nde schmutzig zu machen.| Er liebte das Schmutzige.| Erst die Finanzkrise setzte dem sudeligen Sumpf einer Firma ein Ende: Erst ging Silas Firma pleite, dann schlie??lich Silas.| Mittlerweile ber??t er die B??rsenaufsicht und teilt seine schmutzigen Geheimnisse.",
                       /*                           "prompt": "1) Es geht eher darum, Dreck auf die H??nde zu bekommen. 2) Es geht eher darum, unangenehme oder kriminelle Arbeit zu verrichten.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]*/
                                        }
                                    },
                                    
                                    
                                    
                                     {
                                        "item": {
                                            "id": "filler03",
                                            "string": "S??rens hatte viel Gl??ck im Leben.| Sein Reichtum viel regelrecht vom Himmel und falls er Probleme hat, werden sie ohne gro??en Wirbel einfach weggeweht.| Alles fliegt ihm zu.| Und all das, ohne dass er dem Gl??ck je entgegenfliegen musste.| S??ren lebte mit den Winden sagen einige, manche nannten ihn Luftikus.| Verflogen hat er sich im Leben bisher noch nie.  ",
                       /*                           "prompt": "1) Es geht darum, dass alles in S??rens Richtung geflogen kommt. 2) Es geht eher darum, dass S??ren etwas ohne M??he zukommt und gelingt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]*/
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler04",
                                            "string": "Merve ist seit einigen Wochen verliebt und nur noch auf fernen Planeten anzutreffen.| Es geschah ohne Countdown ziemlich schnell vor zwei Wochen.| Sie sagte es dauerte etwa 3 Sekunden und sie hatte sofort die Umlaufbahn verlassen.| Sie schwebte durch den Raum.| Seither ist um sie herum alles wie voller Sternenstaub und Glitzer.| Dennoch hat Merve ein wenig Angst, was sie von Zeit zu Zeit doch dazu zwingt, auf Planeten zu landen, um sich ein wenig zu erden.",
                                                 "prompt": "1) Es geht eher um das Erleben von Gef??hlen. 2) Es geht eher darum, dass sich jemand schwebend durch den Raum bewegt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler05",
                                            "string": "Petra verlor sich gerne in Tr??umen und Ideen.| Sie liebte die Trunkenheit w??hrend sie sich z.B. Geschichten ausdachte.| Dabei schunkelt sie so lange zwischen den m??glichen Wendungen und Visionen, bis sie ein Ende findet.| Sie betrank sich richtig mit Geschichten und war danach wie verkatert.| Es waren heftige R??usche.| Sie war s??chtig danach und schaffte es, trotz all der Torkelei auf dem Weg dorthin, Schriftstellerin zu werden.",
                                                 "prompt": "1) Es geht eher um die Wirkung von Alkohol. 2) Es geht eher um die Qualit??t eines Erlebnisses.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler06",
                                            "string": "Nach 10 Jahren im gleichen Beruf wagte Harry den Sprung in die Freiheit und breitete seine Fl??gel aus.| Endlich konnte er die Welt von oben sehen, in die Weite blicken und sich losrei??en von seinem dunklen Tal aus Akten.| Doch Harry flog so weit in die H??he, dass er die Kraft verlor.| Es war ein turbulenter Fall.| Harry ging pleite und musste wieder von neuem das Fliegen lernen.| Dennoch blieb er optimistisch und bereute seinen Sprung nicht. ",
                                                 "prompt": "1) Es geht um einen Fall im Raum, bzw. vom Himmel. 2) Es geht um etwas wie den Verlust von Erfolg.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                         {
                                        "item": {
                                            "id": "filler07",
                                            "string": "Peters Reiseberichte waren f??r die Zuh??rer wie ein Gewitter aus Klang.| Mit jeder Wendung in den Erz??hlungen wurde sie in neue Symphonien gerissen.| Sein Erscheinungsbild war regelrecht explosiv und passte zu der Musik seiner Geschichten.| Es hatte eine gute Resonanz.| Verband sich gut und ergab zusammen eine ganze Oper, der man als Zuschauer beiwohnen konnten.| Man bekam das Gef??hl der Korpus seiner Geschichten zu sein.",
                                                 "prompt": "1) Es geht um die Wirkung von Peters Erscheinungsbild. 2) Es geht darum, dass etwas gute akustische Eigenschaften hat.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler08",
                                            "string": "Silas ist Kriminologe und interessierte sich schon seit seiner Kindheit f??r Kriminalf??lle.| Da Silas parallel ein Interesse in Naturwissenschaften entwickelt hat, war Kriminologie das Beste was er studieren konnte.| Er wollte schon immer wissen, wie es dazu kommt, dass sich Menschen die H??nde schmutzig machen.| Das Motiv, die inneren Konflikte, und nat??rlich mit welcher Technik T??ter gefasst werden.| Am meisten fasziniert ihn die DNA, und wie so etwas kleines so deutliche Spuren hinterl??sst.",
                                                 "prompt": "1) Es geht eher darum, Dreck auf die H??nde zu bekommen. 2) Es geht eher darum, unangenehme oder kriminelle Arbeit zu verrichten. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler09",
                                            "string": "S??ren war eigen, aber in vielem sehr begabt.| Es war so, dass egal wie komplex die Aufgabe war und wie lange sie dauerte, S??ren die Ruhe und die passenden Ideen daf??r fand.| Es flog ihm zu.| Mit anderen Sachen hatte S??ren wiederum Schwierigkeiten.| Seine Leidenschaften kann er nicht immer gut teilen.| Dennoch fand S??ren immer wieder Gesellschaft, zB. ??ber das Schachspielen. ",
                                                 "prompt": "1) Es geht darum, dass etwas zu S??ren geflogen gekommen ist. 2) Es geht eher darum, dass S??ren viel Gl??ck hat oder ihm etwas ohne M??he zukommt und gelingt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler10",
                                            "string": "Merve tr??umt davon Kost??mdesignerin zu werden.| Sie konzipiert gerne Kleider f??r Menschen.| Sie liebt die Unterschiede der Menschen.| Es ergeben sich dadurch viel Design-M??glichkeiten.| Derzeit schneidert sie am liebsten Kleider f??r die S??ngerin und langj??hrige Freundin Anna.| Sie hat ein sehr besonderes Auftreten, sagt Merve, und schwebe durch den Raum.| Merve gefallen solche Momente und genie??t daher ihren Beruf sehr, auch wenn es nicht immer leicht ist in dem Bereich.",
                                                 "prompt": "1) Es geht eher um das Auftreten und Erscheinen einer Person. 2) Es geht eher darum, dass sich jemand schwebend durch den Raum bewegt.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler11",
                                            "string": "Petra besuchte letzte Woche ihr Lieblingsmuseum, in dem sie schon lange nicht mehr gewesen war.| Sie verbrachte Stunden damit sich die Bilder, Kunstwerke, Ausstellungst??cke und Info-Texte durchzulesen und alles in Erfahrung zu bringen, was sie konnte.| Es war ein heftiger Rausch.| Petra verga?? schnell die Zeit und wurde fast im Museum eingeschlossen, doch der Hausmeister bemerkte sie zum Gl??ck noch rechtzeitig.",
                                                 "prompt": "1) Es geht eher um die Wirkung von Substanzen. 2) Es geht eher um die Qualit??t eines Erlebnisses.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                         {
                                        "item": {
                                            "id": "filler12",
                                            "string": "Harry machte vor Jahren viel Geld mit Gewinnspielen und hatte ein sorgenfreies Leben: Alles lief super.| Doch dann machte Harry schwere Verluste.| Sehr schnell bekam Harry finanzielle Probleme, der Stress wurde zu viel und er konnte nicht mehr.| Es war ein turbulenter Fall.| Harry hatte sich ??bernommen und verlor alles.| Harry fand jedoch auch danach wieder einen Weg und sucht heutzutage den Spa?? am Risiko vielleicht h??chstens noch in Videospielen.",
                                                 "prompt": "1) Es geht um einen Fall im Raum. 2) Es geht um etwas wie den Verlust von Erfolg und Besitz.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler13",
                                            "string": "Peter besch??ftigt sich viel mit bildender Kunst.| Er sucht gerne nach ganz besonderen Details in den Techniken der K??nstler und stellt sich vor, wie es ist, ein gro??es Kunstwerk zu malen.| Besondere Kunst findet Peter aber auch an ganz unscheinbaren Orten.| Gestern ging Peter durch die Stra??e und begegnete einem tollen Werk.| Es hatte eine gute Resonanz.| Peter mochte solche Ereignisse im Alltag.| Kunst ist ??berall.",
                                                 "prompt": "1) Es geht um die Wirkung, die das Kunstwerk in Peter erzeugt. 2) Es geht um die akustischen Eigenschaften des Kunstwerks. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler14",
                                            "string": "Silas hat andere Interessen als seine Schwester.| Die will nichts lieber als im Dreck spielen und damit herumspritzen.| Silas hat hingegen andere Freizeitpl??ne.| Sich die H??nde schmutzig machen, das war noch nie was f??r Silas.| Silas schaute lieber die Welt an, als sie anzufassen, und malte sie gerne.| Weil Hermine Silas oft mit Dreck ??rgert, hat sich Silas daher entschieden ein gro??es Bild seiner Schwester zu malen, wie sie mit einem Traktor G??lle in ihrem Zimmer verspr??ht.| Sie liebt das Bild.",
                                                 "prompt": "1) Es geht eher darum, Dreck auf die H??nde zu bekommen. 2) Es geht eher darum, unangenehme oder kriminelle Arbeit zu verrichten. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler15",
                                            "string": "S??ren ist gerne mit sich alleine, dennoch mag er es, wenn es etwas lebendig um ihn herum ist.| Leider gibt es in seiner Gegend kaum interessante ??ffentliche Pl??tze, z.B. zum Lesen, und er f??hrt nur selten in die Stadt.| Seit kurzem lebt bei S??ren jedoch ein kleines V??gelchen.| Es flog ihm zu.| Er muss es noch eine Weile pflegen, damit es bald wieder fliegen kann.| S??ren vermisst jetzt schon die Zeit mit dem V??gelchen.",
                                                 "prompt": "1) Es geht darum, dass etwas zu S??ren geflogen gekommen ist. 2) Es geht eher darum, dass jemand viel Gl??ck hat oder ihm etwas ohne M??he zukommt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler16",
                                            "string": "Merve ist Astronautin und liebt jeden Moment, den sie in der Umlaufbahn der Erde verbringen kann.| Gerade schickt sie ihren Freunden eine Videobotschaft und demonstriert ihren Freunden, die Schwerelosigkeit.| ???Wie einfach man sich hier von A nach B bewegen kann!??? Sie schwebt durch den Raum.| Dann macht sie noch ein paar Saltos.| Ihre Freunde sind total begeistert.| Ob sie wieder zur??ck m??chte, wird sie gefragt. ???Ja sagt sie, aber es w??re auch sch??n, wenn die Erde ins All kommen k??nnte.???",
                                                 "prompt": "1) Es geht eher um das Auftreten und Erscheinen einer Person. 2) Es geht eher darum, dass sich jemand schwebend durch den Raum bewegt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                         {
                                        "item": {
                                            "id": "filler17",
                                            "string": "Petra besuchte vor einer Woche ihren alten Freund Miroslav.| Fr??her waren sie beste Freunde und hatten zusammen sogar eine Punk-Band.| Sie redeten bis sp??t in die Nacht ??ber alte Zeiten und tranken Sterni.| Es war ein heftiger Rausch.| Petra hatte am n??chsten Tag starke Kopfschmerzen.| Miroslav hat jedoch die besten Rezepte gegen Kopfschmerzen und so ging es Petra schnell wieder gut. ",
                                                 "prompt": "1) Es geht eher um die Wirkung von Alkohol. 2) Es geht eher um die Qualit??t eines Erlebnisses.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler18",
                                            "string": "Harry war sich sicher, dass er seinen ersten Fallschirmsprung gut meistern w??rde.| Es war sein gr????ter Traum, wenn auch zugleich seine gr????te Angst, einmal mit dem Fallschirm aus einem Flugzeug zu springen.| Es war ein turbulenter Fall.| Harry hatte jedoch den Spa?? seines Lebens.| M??chtig durchgesch??ttelt kam er wieder heil am Boden an und sprang sofort nochmal. ",
                                                 "prompt": "1) Es geht um einen Fall im Raum. 2) Es geht um etwas wie bspw. einen Karriereabsturz.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler19",
                                            "string": "Peter kaufte sich vor kurzem eine Ukulele.| Es war schon immer sein Wunsch, noch ein Instrument zu lernen.| Sogar den Nachbarn gefiel die Idee.| Er verbrachte ohne M??he viel Zeit und der Klang im Wohnzimmer war sehr gut.| Es hatte eine gute Resonanz.| Seither veranstaltet er kleine Konzerte, was den Zusammenhalt unter den Nachbarn st??rkte.| Die Ukulele verhalf Peter zu ganz neuen Ausdrucksm??glichkeiten und Freunden.",
                                                 "prompt": "1) Es geht um die Raumakustik des Wohnzimmers. 2) Es geht um die Rezension von Peters Musik in einer Zeitung",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler20",
                                            "string": "Silas versumpfte in letzter Zeit h??ufiger in den schr??gsten Ecken der Stadt.| Seine Stelle ging ihm fl??ten.| Silas ist sofort eine neue zugeflogen, jedoch fehlt ihm gerade der Funken, um wieder richtig Gas geben zu k??nnen.| Bevor er Makler wurde, h??pfte Silas auf dem Bau herum, bis er sich den R??cken zerschossen hat.| Zumindest muss er sich die H??nde nicht mehr schmutzig machen, sagt er immer.| Silas gef??llt ist viel mehr, butterweiche H??nde zu haben, anstatt Reibeisen. ",
                                                 "prompt": "1) Es geht eher darum, Dreck auf die H??nde zu bekommen. 2) Es geht eher darum, unangenehme oder kriminelle Arbeit zu verrichten. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler26",
                                            "string": "S??ren liebt es im Chaos zu baden.| Seine Wohnung glich einem Testgel??nde f??r Bomben.| Er selbst sah sich eher als Kurator eines Stilllebens.| Zumindest bis das wackelige Rabenk??ken auf seiner Fensterbank aufschlug und durch seine Galerie bretterte.| Es flog ihm zu.| Nach zwei Tagen konnte S??rens neuer Kollege wieder auf Spur gebracht werden.| Seither besucht der Rabe S??ren h??ufiger, um gemeinsam mit ihm im Chaos zu baden. ",
                                                 "prompt": "1) Es geht darum, dass etwas zu S??ren geflogen gekommen ist. 2) Es geht eher darum, dass jemand viel Gl??ck hat oder ihm etwas ohne M??he zukommt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler21",
                                            "string": "Merves Theaterprojekt war ein Schiff ohne Kurs.| In der Organisation war der Wurm drin.| Auch ihre Freunde lie??en sie am Ende fast in der W??ste stehen.| Sie stand vor einem Berg aus Tr??mmern, aber sie folgte weiter dem Ruf der B??hne und rettete ihr Baby: Sie sezierte das Skript, w??rzte ein paar Stellen und konnte mit der B??hnentechnik sogar eine bunte Monsterwolke z??chten.| Sie schwebte durch den Raum w??hrend dem Finale.| Die Show wurde zum Feuerwerk f??r Sinne.",
                                                 "prompt": "1) Es geht eher um das Erleben von Gef??hlen, oder die Wirkung einer Person auf andere. 2) Es geht eher darum, dass sich etwas schwebend durch den Raum bewegt. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler22",
                                            "string": "Petra ist Richterin.| Sie kann problemlos Argumente so tief wie Ozeane formulieren.| Zugleich klingen sie wie feine, scharfe Messer.| Sie beh??lt immer die Fassung, aber selten bricht doch ein Damm in ihr.| Zuletzt tanke jemand vor der Fahrt sein Auto und sich selbst.| Der Fahrer knutschte schlie??lich den Asphalt.| Es war ein heftiger Rausch.| Das Auto war nur noch eine Flunder und es gab neben dem Fahrer zwei Verletzte.| In solch unverantwortlichen F??llen bricht in Petra ein Feuer aus und ihre Worte werden zu Raketen.",
                                                 "prompt": "1) Es geht eher um die Wirkung von Alkohol. 2) Es geht eher um die Qualit??t eines Erlebnisses oder einer Handlung.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler23",
                                            "string": "Harry war ein ??berflieger, wenn es um Tetris ging.| Mit blitzge??lten Bewegungen rattern seine H??nde ??ber die Tasten, ansonst sah man nur eine steinerne Statue vor dem Spielautomaten.| Seine Gedanken lebten in einer Art Blase und waren immun gegen das schrille Geschnatter der zuschauenden Zaung??ste.| Wie in einem Strudel gefangen schraubten sich die Tetris-Steine zu Boden.| Es war ein turbulenter Fall.| Harrys Highscore jedoch explodierte immer weiter nach oben. ",
                                                 "prompt": "1) Es geht darum, dass etwas hinabf??llt. 2) Es geht um etwas wie den Verlust von Erfolg. ",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                        {
                                        "item": {
                                            "id": "filler24",
                                            "string": "Peters Musik war ein Jungbrunnen f??r die Sinne.| Jeden Sonntag tigerte er durch die Stadt und verzauberte sie mit seinen Beschw??rungen.| Sein Instrument hatte er aus verschiedensten Tr??mmern zusammengegossen.| Es hatte eine gute Resonanz.| ??u??erlich war es ein Monster.| Innerlich ein verspieltes K??tzchen.| Peter war ein Stern am Himmel dieser Stadt.| Er brachte Herzen zum Gl??hen und Berge zum Weinen.",
                                                 "prompt": "1) Es geht um akutische bzw. klangliche Eigenschaften. 2) Es geht um die Wirkung die beim H??rer ausgel??st wird.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                    {
                                        "item": {
                                            "id": "filler25",
                                            "string": "Ronja hatte schon vor Jahren das Junglefieber gepackt.| Wie nach einer Gehirnw??sche kam sie auf den Trichter,| bei einer Jungleexpedition aufzusatteln.| Ihre Eltern klopften auf Holz,| als Ronja das Nest verlie??.| Als Talisman gaben sie ihr einen Wanderstab mit.| Er war aus demselben Holz geschnitzt| wie die Eingangst??r ihres Hauses.| Ronja konnte sich auf die Aufregung ihrer Eltern keinen Reim machen.| Der Jungle ist kein Ponyhof, das war ihr klar.| Aber dass die Natur sie verschlucken w??rde, glaubte sie nicht.",
                                                 "prompt": "Ergibt das Sinn?",
                                              "options": [
                                          {
                                               "string": "ja",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "nein",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                    
                                    {
                                        "item": {
                                            "id": "filler27",
                                            "string": "Wenn Heinz Restaurants testete, verfuhr er wie ein Sieb.| Weniger gute landeten gleich auf seinem mentalen M??llhaufen.| Er wurde w??tend, wenn Chocolatiers Verbrechen an einem Dessert begingen:| ???Das ist keine Pralinenschachtel, sondern eine Portion Mensafra??.???",
                                                 "prompt": "Wie verstehen Sie die markierte Passage? 1) Es geht um Heinz??? Abneigung gegen??ber Essen aus der Kantine. 2) Es geht um Heinz??? allgemeine Unzufriedenheit.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler28",
                                            "string": "Die Gefahr, die von der Medusa ausging, war eine rei??ende Schlucht.| Denn ihr Blick gefror jeden, der ihm begegnete, in eine unbewegliche Puppe.| Auch als Simon sie ansah,| wurde er zum Stein.| Die Medusa war bekannt als der wei??e Hai unter den Meeresgottheiten.",
                                                 "prompt": "Warum taucht hier ein Stein auf? 1) Es geht um die Verwandlung eines Menschen in ein Ding. 2) Es geht um Simons emotionale Distanziertheit.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                     {
                                        "item": {
                                            "id": "filler29",
                                            "string": "Das mobile Schulprojekt ???B??cher auf R??dern??? goss Wissen wie durch Trichter in die Sch??ler ein.| Das Vorzeigekonzept war der gl??nzende Stern am Himmel des sozialen Engagements.| Sch??ler verschlangen nun B??cher, die in einem Bus zu ihnen kamen.| Es war eine wandelnde Bibliothek.",
                                                 "prompt": "Warum wird das Projekt als wandelnde Bibliothek bezeichnet? 1) Weil ein Bus B??cher zu den Sch??lern bringt. 2) Weil eine Bibliothek so umgebaut wurde, dass man sie nun als Fahrzeug benutzen kann.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                       {
                                        "item": {
                                            "id": "filler30",
                                            "string": "Das mobile Schulprojekt ???B??cher auf R??dern??? sollte Wissen auch in die entlegensten D??rfer bringen.| Die Sch??ler vor Ort konnten f??r vier Wochen ein Buch aus dem Bus ausleihen| und wenn er abfuhr, erhielten die Schulen digitale Kopien.| Es war eine wandelnde Bibliothek.",
                                                 "prompt": "Warum wird das Projekt als wandelnde Bibliothek bezeichnet? 1) Weil ein Bus B??cher zu den Sch??lern bringt. 2) Weil eine Bibliothek so umgebaut wurde, dass man sie nun als Fahrzeug benutzen kann.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler31",
                                            "string": "Es schien, als k??nnte Erna sich alles merken.| Besonders in den Naturwissenschaften hatte sie ein beachtliches Wissen angesammelt.| Wenn es darauf ankam, konnte sie immer diejenige Information abrufen,| die im Moment entscheidend war.| Erna war eine wandelnde Bibliothek. ",
                                                 "prompt": "Warum wird Erna als wandelnde Bibliothek bezeichnet? 1) Weil sie viel wei??. 2) Weil sie viele B??cher hat.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                     {
                                        "item": {
                                            "id": "filler32",
                                            "string": "Jede neue Information wurde von Erna wie ein Buch in ihr mentales B??cherregal gestellt.| Die Abteilung f??r Naturwissenschaften war besonders gut sortiert.| Wenn es darauf ankam,| konnte sie immer auf dieses Archiv zur??ckgreifen.| Erna war eine wandelnde Bibliothek.",
                                                 "prompt": "Warum wird Erna als wandelnde Bibliothek bezeichnet? 1) Weil sie viel wei??. 2) Weil sie viele B??cher hat.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                      {
                                        "item": {
                                            "id": "filler33",
                                            "string": "Jeder wusste, dass es gef??hrlich war, der Medusa direkt in die Augen zu sehen.| Auch Simon hatte man gewarnt, doch es war schon zu sp??t| und so wurde er zum Stein.| Ihr Blick hatte ihn durchbohrt und verwandelte ihn in leblose Materie. ",
                                                 "prompt": "Warum taucht hier ein Stein auf? 1) Es geht um die Verwandlung eines Menschen in ein Ding. 2) Es geht um Simons emotionale Distanziertheit.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    },
                                    
                                           {
                                        "item": {
                                            "id": "filler35",

                                            "string": "Lea hatte sich angew??hnt,| ihren Bruder Matti nur noch als das Grab der Familie vorzustellen,| seit dieser immer mehr in den dunklen Machenschaften einer Bande Kleinkrimineller aufging.| Er empfand sein neues Leben hingegen durchaus als Bereicherung| und hatte keine Ahnung,| warum sie ihm vorwarf,| er w??rde das Gold der Familie versilbern.",
                                                "prompt": "Sind Sie auch der Meinung, das Familiengold sollte besser nicht versilbert werden? 1) Ja/Nein 2) Das ist egal, Lea geht es um etwas anderes.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    },      
                                    
                                     {
                                        "item": {
                                            "id": "filler36",

                                            "string": "Julie war nach Julians Aussage eine hei??e Olle,| die er nicht, ohne sein Bein zu heben,| an der Ecke w??rde stehengelassen haben -| wenn sie einmal beim Sex auf ihn warten w??rde.| So aber wie die Dinge lagen,| konnte er stets nur zusehen,| wie sie schon den n??chsten vernaschte, statt zu warten,| bis er denn endlich gekommen war.",
                                                  "prompt": "Finden Sie es schlimm, wenn jemand zu sp??t zu einem Date kommt? 1) Jein 2) Ich glaube, es geht hier um etwas anderes.",
  "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                        
                    ]
                                        }
                                        },
                                      
                                            {
                                        "item": {
                                            "id": "filler37",

                                            "string": "Eigentlich sollten die Figuren im Regal daf??r sorgen,| dass Erna stets alle H??nde voll zu tun hatte, wenn sie staubwedelnd durch die Wohnung fegte.| Die Putzfee hatte jedoch ein Geistesblitz ereilt,| als sie einmal zuf??llig lange genug vor einem der Staubf??nger verweilt war.| Man musste bei manchem Reinigungsakt einfach| ein Auge zudr??cken,| dann s??uberten sich die Regale wie von sebst.| Ihre Kinder waren ohnehin blind f??r den Dreck.",
                                                "prompt": "Versuchen Sie, zu beantworten, warum <ein Auge zugedr??ckt> werden soll: 1) Damit man den Dreck nicht sieht. 2) Weil man nicht immer alles perfekt machen muss.",
                                              "options": [
                                          {
                                               "string": "(1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "(2)",
                                               "feedback": "okay."
                        }
                    ]
                                        } 
                                    },  
                                    
                                      {
                                        "item": {
                                            "id": "filler34",
                                            "string": "Privat und beruflich langweilte Heinz sich schon lange.| Er glaubte nicht mehr an ??berraschungen,| sondern f??hlte nur noch Stagnation.| Er mochte sein Leben nicht und sagte:| ???Das ist keine Pralinenschachtel, sondern eine Portion Mensafra??.???",
                                                 "prompt": "Wie verstehen Sie die markierte Passage? 1)Es geht um Heinz??? Abneigung gegen??ber Essen aus der Kantine. 2) Es geht um Heinz??? allgemeine Unzufriedenheit.",
                                              "options": [
                                          {
                                               "string": "1)",
                                               "feedback": "okay."
                        },
                        {
                                               "string": "2)",
                                               "feedback": "okay."
                        }
                    ]
                                        }
                                    }
                                    
                                    
                                    
                                ]
                            }
                        }                         ///end filler group

                            /// klammern schlieszen: ] } } ] }
                    ]
                }
            }
        ]
    },
    "ending-screens":[ {
        "id": "instruction4",
        "string": "[12431.fin v6.0]"
    }]
};