infix using "C:\COUNTRIES\BJ71\BJFW71FL.dct"

label variable fw101    "Fieldworker code"
label variable fw000    "Country code and phase"
label variable fw102    "Fieldworker region of residence"
label variable fw103    "Fieldworker type of place of residence"
label variable fw104    "Fieldworker age"
label variable fw105    "Fieldworker sex"
label variable fw106    "Fieldworker marital status"
label variable fw107    "Fieldworker number of living children"
label variable fw108    "Fieldworker ever had a child who died"
label variable fw109    "Highest level of school attended by fieldworker"
label variable fw110    "Highest grade/form/year at that level completed by fieldworker"
label variable fw111    "Fieldworker religion"
label variable fw112    "Fieldworker ethnicity"
label variable fw113a   "French"
label variable fw113b   "Adja"
label variable fw113c   "Bariba"
label variable fw113d   "Fon"
label variable fw113e   "Dendi"
label variable fw113f   "Ditamari"
label variable fw113g   "Yoruba"
label variable fw113h   "Not used"
label variable fw113i   "Not used"
label variable fw113j   "Other"
label variable fw113k   "Not used"
label variable fw113l   "Not used"
label variable fw113m   "Not used"
label variable fw113x   "Other language"
label variable fw113y   "No other language"
label variable fw114    "Fieldworker's mother tongue/native language"
label variable fw115    "Has fieldworker ever worked on a DHS"
label variable fw116    "Has fieldworker ever worked on any other survey"
label variable fw117    "Was fieldworker working for agency at the time employed for DHS"
label variable fw118    "Is fieldworker permanent or te temporary employed of agency"

#delimit ;
label define FW102   
     1 "ALIBORI"
     2 "ATACORA"
     3 "ATLANTIQUE"
     4 "BORGOU"
     5 "COLLINES"
     6 "COUFFO"
     7 "DONGA"
     8 "LITTORAL"
     9 "MONO"
    10 "OUÉMÉ"
    11 "PLATEAU"
    12 "ZOU"
;
label define FW103   
     1 "City with special status ('Statut Particulier')"
     2 "Other City"
     3 "Secondary city ('Ville secondaire')"
;
label define FW105   
     1 "Male"
     2 "Female"
;
label define FW106   
     1 "Currently married"
     2 "Living with a man/woman"
     3 "Widowed"
     4 "Divorced"
     5 "Separated"
     6 "Never married or lived with a man/woman"
;
label define FW108   
     1 "Yes"
     2 "No"
;
label define FW109   
     1 "Primary"
     2 "Secondary 1"
     3 "Secondary 2"
     4 "Higher"
;
label define FW110   
     0 "Less than one year at level"
;
label define FW111   
     1 "Vodoun"
     2 "Other traditional"
     3 "Islam"
     4 "Catholic"
     5 "Protestant Methodist"
     6 "Other Protestants"
     7 "Celestes"
     8 "Other Christians"
     9 "Other religions"
    10 "No religion"
    96 "Other"
;
label define FW112   
     1 "Adja and related"
     2 "Bariba and related.."
     3 "Dendi and related.."
     4 "Fon and related.."
     5 "Yoa, Lokpa and related."
     6 "Betamaribe and related"
     7 "Peulh and related"
     8 "Yoruba and related.."
    96 "Other Beninois"
    97 "Other nationalities"
;
label define FW114   
     1 "French"
     2 "Adja"
     3 "Bariba"
     4 "Fon"
     5 "Dendi"
     6 "Ditamari"
     7 "Yoruba"
     8 "Other"
;
label define FW115   
     1 "Yes"
     2 "No"
;
label define FW116   
     1 "Yes"
     2 "No"
;
label define FW117   
     1 "Yes, INSAE"
     3 "No"
;
label define FW118   
     1 "Permanent"
     2 "Temporary"
;

#delimit cr
label values fw102    FW102   
label values fw103    FW103   
label values fw105    FW105   
label values fw106    FW106   
label values fw108    FW108   
label values fw109    FW109   
label values fw110    FW110   
label values fw111    FW111   
label values fw112    FW112   
label values fw114    FW114   
label values fw115    FW115   
label values fw116    FW116   
label values fw117    FW117   
label values fw118    FW118   
