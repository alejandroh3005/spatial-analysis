infix using "C:\COUNTRIES\AM71\AMFW72FL.dct"

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
label variable fw113a   "Armenian"
label variable fw113b   "Assyrian"
label variable fw113c   "English"
label variable fw113d   "Greek"
label variable fw113e   "Kurdish/Yezidi"
label variable fw113f   "Russian"
label variable fw113x   "Other language"
label variable fw114    "Fieldworker's mother tongue/native language"
label variable fw115    "Has fieldworker ever worked on a DHS"
label variable fw116    "Has fieldworker ever worked on any other survey"
label variable fw117    "Was fieldworker working for agency at the time employed for DHS"
label variable fw118    "Is fieldworker permanent or te temporary employed of agency"

#delimit ;
label define FW102   
     1 "Yerevan"
     2 "Aragatsotn"
     3 "Ararat"
     4 "Armavir"
     5 "Gegharkunik"
     6 "Lori"
     7 "Kotayk"
     8 "Shirak"
     9 "Syunik"
    10 "Vayots dzor"
    11 "Tavush"
;
label define FW103   
     1 "CIty"
     2 "Town"
     3 "Rural"
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
     1 "Primary-Basic-Secondary (1-12)"
     2 "Secondary-Special"
     3 "Higher"
;
label define FW110   
     0 "Less than one year at level"
;
label define FW112   
     0 "No answer"
     1 "Whitte"
;
label define FW114   
     1 "Armenian"
     2 "Assyrian"
     3 "English"
     4 "Greek"
     5 "Kurdish/Yezidi"
     6 "Russian"
    96 "Other"
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
     1 "Yes, National statistical service"
     2 "Yes, Ministry of health"
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
label values fw112    FW112   
label values fw114    FW114   
label values fw115    FW115   
label values fw116    FW116   
label values fw117    FW117   
label values fw118    FW118   
