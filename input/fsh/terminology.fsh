
Alias: $SCT = http://snomed.info/sct

RuleSet: VSCodeDef(system,code,display)
* compose.include[+].system = {system} 
* compose.include[=].concept[+].code = #{code}
* compose.include[=].concept[=].display = "{display}"


Instance: FoodAllergyVS-cont
InstanceOf: ValueSet
Description: "Food Allergy ValueSet"
Title: "Food Allergy ValueSet"
Usage: #inline
* name = "FoodAllergyVS"
* id = "vs-food-allergy-cont"
* status = #active
* insert VSCodeDef($SCT,91935009,Allergy to peanut)
* insert VSCodeDef($SCT,48821000119104,Allergy to tree nut)
* insert VSCodeDef($SCT,782555009,Allergy to cow’s milk protein)
* insert VSCodeDef($SCT,213020009,Allergy to egg protein)
* insert VSCodeDef($SCT,417532002,Allergy to fish)
* insert VSCodeDef($SCT,300913006,Allergy to shellfish)
* insert VSCodeDef($SCT,782594005,Allergy to soy protein)
* insert VSCodeDef($SCT,260167008,Sesame seed) // note that this is not the correct code – one couldn’t be found
* insert VSCodeDef($SCT,21191000122102,Allergy to mustard)
* insert VSCodeDef($SCT,712843002,Allergy to celery)
* insert VSCodeDef($SCT,782575000,Allergy to lupine seed)


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
Title: "Food Allergy clinical status"
Description:  "Food Allergy clinical status."
* $SCT#723506003 "Resolved"
* $SCT#55561003  "Active"



Instance: FoodAllergyVerificationStatusVS-cont
InstanceOf: ValueSet
Description: "Food Allergy verification status ValueSet"
Title: "Food Allergy verification status ValueSet"
Usage: #inline
* name = "FoodAllergyVerificationStatusVS"
* id = "vs-food-allergy-verifstatus-cont"
* status = #active
* insert VSCodeDef($SCT,410605003,Confirmed present)
* insert VSCodeDef($SCT,415684004,Suspected)





Instance: FoodAllergyClinicalStatusVS-cont
InstanceOf: ValueSet
Description: "Food Allergy clinical status ValueSet"
Title: "Food Allergy clinical status ValueSet"
Usage: #inline
* name = "FoodAllergyVS"
* id = "vs-food-allergy-clinstatus-cont"
* status = #active
* insert VSCodeDef($SCT,723506003,Resolved)
* insert VSCodeDef($SCT,55561003,Active)
