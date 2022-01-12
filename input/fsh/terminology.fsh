Alias: $SCT = http://snomed.info/sct

ValueSet: FoodAllergyVS
Id: vs-food-allergy
Title: "Food Allergies"
Description:  "Main Food allergies."
* $SCT#91935009 "Allergy to peanut"
* $SCT#48821000119104 "Allergy to tree nut"
* $SCT#782555009 "Allergy to cow's milk protein"
* $SCT#213020009 "Allergy to egg protein"
* $SCT#417532002 "Allergy to fish"
* $SCT#300913006 "Allergy to shellfish"
* $SCT#782594005 "Allergy to soy protein"
* $SCT#260167008 "Sesame seed" // note that this is not the correct code – one couldn’t be found
* $SCT#21191000122102 "Allergy to mustard"
* $SCT#712843002 "Allergy to celery"
* $SCT#782575000 "Allergy to lupine seed"



ValueSet: FoodAllergyVerificationStatusVS
Id: vs-food-allergy-verifstatus
Title: "Food Allergy verification status"
Description:  "Food Allergy verification status."
* $SCT#410605003 "Confirmed present"
* $SCT#415684004 "Suspected"



ValueSet: FoodAllergyClinicalStatusVS
Id: vs-food-allergy-clinstatus
Title: "Food Allergy verification status"
Description:  "Food Allergy verification status."
* $SCT#723506003 "Resolved"
* $SCT#55561003  "Active"

